<template>
  <div class="Meter">
    <!-- svg :width="g_width" :height="g_height" -->
    <svg :width="g_width" :height="height">

      <defs>
        <filter id="f1" x="-20" y="-20" width="200" height="200">
          <feGaussianBlur in="SourceGraphic" stdDeviation="10" />
        </filter>

        <filter id="blurFilter5" x="-20" y="-20" width="200" height="200">
            <feGaussianBlur in="SourceGraphic" stdDeviation="2" />
        </filter>
        <filter id="blurFilter6" x="-20" y="-20" width="200" height="200">
            <feGaussianBlur in="SourceGraphic" stdDeviation="6" />
        </filter>
        <filter id="blurFilter7" x="-20" y="-20" width="200" height="200">
            <feGaussianBlur in="SourceGraphic" stdDeviation="12" />
        </filter>

      </defs>

      <rect x="0" y="0" :width="g_width" :height="height" fill="gray"  />
      <g>
        <path d="M 0,100 a 100 100 -270 0 1 0,-200" 
          fill="none" 
          stroke="yellow"
          stroke-width="10"
          stroke-opacity="0.9"
          paint-order="stroke"
          filter="url(#f1)"
          :transform="center"
          />  
      </g>

      <g :transform="center" v-for="row in scales" >
        <rect 
          x="0" 
          y="0" 
          width="20" 
          height="20" 
          stroke="black"
          stroke-width="1"
          :fill="row.color" 
          :transform="row.transform" 
          rx="5"
        />
      </g>
      
    
      
      
    </svg>
  </div>
</template>

<script lang="coffee" src="./meter.coffee"></script>
