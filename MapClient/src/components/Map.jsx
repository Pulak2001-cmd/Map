import React from 'react';
import { GoogleMap, MarkerClusterer, useJsApiLoader, useLoadScript, Marker, InfoWindow } from '@react-google-maps/api';
import axios from 'axios';
import Position from '../Positions';


const containerStyle = {
  width: '100vw',
  height: '100vh'
};

const center = {
  lat: 22.5726,
  lng: 88.3639
};

async function getData(){
  const response1 = await axios.get('http://127.0.0.1:5000/colleges/districts');
  return response1.data;
}
async function getStatus(){
  const response2 = await axios.get('http://127.0.0.1:5000/colleges/statuses');
  return response2.data;
}
async function getBlock(){
  const response = await axios.get('http://127.0.0.1:5000/colleges/blocks');
  return response.data;
}

function Map() {
  const { isLoaded } = useJsApiLoader({
    id: 'google-map-script',
    googleMapsApiKey: "AIzaSyAiOEixVl4_Xip7RnI-ZmDLT3cXgv3xoYA"
  })
  const [st_list, setST] = React.useState([]);
  const [status, setStatus] = React.useState([]);
  const [bl_list, setBlist] = React.useState([]);
  const [map, setMap] = React.useState(null)
  const [name, setName] = React.useState("")
  const [selected, setSelected] = React.useState(null)
  const [state, setState] = React.useState("")
  const [type, setType] = React.useState("")
  const [block, setBlock] = React.useState("")
  const [data, setData] = React.useState(false)
  const [arr, setarr] = React.useState([])
  const [arr2, setarr2] = React.useState("kill")
  const [inst, setInst] = React.useState("")
  const handleState = (e)=>{
    setState(e.target.value);
    console.log(e.target.value);
  }
  const handleType = (e)=>{
    setType(e.target.value);
  }
  const handleBlock = (e)=>{
    setBlock(e.target.value);
  }
  const searchfilter = async(lat, lng) => {
    console.log(lat, lng);
    const response = await axios.get(`https://maps.googleapis.com/maps/api/geocode/json?latlng=${lat},${lng}&sensor=true&key=AIzaSyAiOEixVl4_Xip7RnI-ZmDLT3cXgv3xoYA`);
    setarr([]);
    // console.log(response.data.results[0].address_components);
    const stateName = response.data.results[0].address_components[2].long_name;
    const res = await axios.get(`http://127.0.0.1:5000/colleges/${stateName.toUpperCase()}`);
    // console.log(res.data)
    setState(stateName.toUpperCase());
    const list = [];
    res.data.map(async (i)=>{
      const dict = {lat: i.lat, lng: i.lng, time: new Date(), name: i.institute}
      list.push(dict);
    })
    setarr(list);
  }
  const searchSubmit = async()=>{
    if (state !== ""){
      const res = await axios.get(`http://127.0.0.1:5000/colleges/${state}`);
      const list = []
      res.data.map(async (i)=>{
        const dict = {lat: i.lat, lng: i.lng, time: new Date(), name: i.institute}
        list.push(dict);
      })
      setarr(list);
    }
    else if (type !== ""){
      const res = await axios.get(`http://127.0.0.1:5000/colleges/status/${type}`);
      console.log(res.data);
      const list = []
      res.data.map(async (i)=>{
        const dict = {lat: i.lat, lng: i.lng, time: new Date(), name: i.institute}
        list.push(dict);
      })
      setarr(list);
    }
    else if(block !== "") {
      const res = await axios.get(`http://127.0.0.1:5000/colleges/block/${block}`);
      console.log(res.data);
      const list = []
      res.data.map(async (i)=>{
        const dict = {lat: i.lat, lng: i.lng, time: new Date(), name: i.institute}
        list.push(dict);
      })
      setarr(list);
    }
  }
  const markers = []
  const mapref = React.useRef();
  const defLoad = async ()=>{
    const resp = await axios.get('http://127.0.0.1:5000/colleges');
    const list = []
    resp.data.map(async (i)=>{
      const dict = {
        lat: i.lat,
        lng: i.lng,
        name: i.institute,
      }
      list.push(dict);
    })
    setarr(list);
  }
  const onLoad = React.useCallback(async function callback(map) {
    mapref.current = map;
    const temp = await getData();
    setST(temp);
    const temp2 = await getStatus();
    setStatus(temp2);
    const temp3 = await getBlock();
    setBlist(temp3);
    const response = await axios.get('https://eodb.indiagis.org/eodb/gmap/fetch.distcoord?code=');
    console.log(response.data);
    const state_data = []
    response.data.map((i)=>{
      const dict = {lat: parseFloat(i[4]), lng: parseFloat(i[3])};
      state_data.push(dict);
    })
    var location = new google.maps.Polyline({
      path: state_data,
      strokeColor: 'red',
    })
    location.setMap(map);
    defLoad();
  }, [arr])
  const onUnmount = React.useCallback(function callback(map) {
    setMap(null)
  }, [])

  const getplace = async (lat, lng) => {
    const response = await axios.get(`https://maps.googleapis.com/maps/api/geocode/json?latlng=${lat},${lng}&sensor=true&key=AIzaSyAiOEixVl4_Xip7RnI-ZmDLT3cXgv3xoYA`)
    setName(response.data.results[0].formatted_address);
  }
  const handleData = (e)=>{
    setData(e.target.checked);
  }
  const handleLoad = ()=>{
    defLoad();
    setState("");
    setBlock("");
    setType("");
  }
  return isLoaded ? (
      <div>
        <div className="Box">
        <div className="form-check form-switch">
          <input className="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault" onChange={handleData} name={data}/>
          <label className="form-check-label" for="flexSwitchCheckDefault">{data ? "Remove All" : "Show All Institutions"}</label>
        </div>
        <button className="btn btn-primary" onClick={handleLoad}>Get All Data</button>
        <div className="input-group my-2">
          <select className="form-select" id="inputGroupSelect04" aria-label="Example select with button addon" value={state} onChange={handleState}>
            <option defaultValue="">Choose The District</option>
            {st_list.map((i, index)=>{
              return (
                <option key={index} value={i}>{i}</option>
              )
            })}
          </select>
        </div>
        <div className="input-group my-3">
          <select className="form-select" id="inputGroupSelect04" aria-label="Example select with button addon" value={block} onChange={handleBlock}>
            <option defaultValue="123">Choose The Block</option>
            {bl_list.map((i, index) =>{
              return (
                <option value={i} key={index}>{i}</option>
              )
            })}
          </select>
        </div>
        <div className="input-group my-3">
          <select className="form-select" id="inputGroupSelect04" aria-label="Example select with button addon" value={type} onChange={handleType}>
            <option defaultValue="">Choose The Institution type</option>
            {status.map((i, index) =>{
              return (
                <option value={i} key={index}>{i}</option>
              )
            })}
          </select>
        </div>
        <button className="btn btn-outline-secondary" onClick={() => searchSubmit()}>Search</button>
        </div>
        <h1>ITI & Polytechnique🏣</h1>
      <GoogleMap
        mapContainerStyle={containerStyle}
        center={center}
        zoom={6}
        onLoad={onLoad}
        onUnmount={onUnmount}
        onClick={(e)=>{
            // setMarker((current)=>[
            //     ...current,
            //     {
            //         lat: e.latLng.lat(),
            //         lng: e.latLng.lng(),
            //         time: new Date(),
            //     },
            // ]);
            searchfilter(e.latLng.lat(), e.latLng.lng());
        }}

      >
        {data && arr.map((marker, index)=> (
            <Marker key={index} position={{lat: marker.lat, lng: marker.lng}} icon={{ url: "src/logo.png", scaledSize: new window.google.maps.Size(50, 50), origin: new google.maps.Point(0, 0), anchor:new google.maps.Point(25, 25)}} onClick={()=>{setSelected(marker);getplace(marker.lat, marker.lng); setInst(marker.name);}} />
        )) }
        {selected ? (<InfoWindow position={{lat: selected.lat, lng: selected.lng}} onCloseClick={()=>{setSelected(null); setName("");}}>
        <div className="card" style={{width: "18rem"}}>
          {/* <img src="/src/logo.png" className="card-img-top" alt="..." height="40px" widht="40px"/> */}
          <div className="card-body">
            <h6 className="card-title">{inst}</h6>
            <p className="card-text">{name}</p>
          </div>
        </div>
          </InfoWindow>) : null}
        <></>
      </GoogleMap></div>
  ) : <></>
}

export default React.memo(Map)