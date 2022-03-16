import React, { Component } from 'react';
import { GoogleMap, MarkerClusterer, useJsApiLoader, useLoadScript, Marker, InfoWindow } from '@react-google-maps/api';
import axios from 'axios';

export class Gmap extends Component {
    constructor(props) {
        super(props);
        this.state = {
            containerStyle: {width: '100vw', height: '100vh'},
            center: {lat: 22.5726, lng: 88.3639},
        }
    }
    componentDidMount() {
        const isLoaded  = useJsApiLoader({
            id: 'google-map-script',
            googleMapsApiKey: "AIzaSyAiOEixVl4_Xip7RnI-ZmDLT3cXgv3xoYA"
          })
        console.log(isLoaded);
    }
    
  render() {
    
    // return isLoaded ? (
    //   <div>
    //       <GoogleMap
    //     mapContainerStyle={this.state.containerStyle}
    //     center={this.state.center}
    //     zoom={6}
    //       >

    //       </GoogleMap>
    //   </div>
    // ): <></>
    return (
        <></>
    )
  }
}

export default Gmap