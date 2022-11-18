<template>
  <div id="app">
    <div class="card">
      <div class="card-inner">
        <div class="card-content">
          <div style="font-size: 1.5rem; font-weight: 500">Hi, <s>小妞 </s>石頭媽媽</div>
          <p style="margin-top: 32px; padding-left: 16px; line-height: 1.5rem;">
            謝謝阿姨常常都給我準備好料的，還用餅乾幫我食補。希望阿姨可以天天都開心。
            雖然石頭常常很任性，但是希望妳們可以維持像現在一樣的好感情，繼續快快樂樂地玩下去。
          </p>
          <br>
          <div style="text-align: right">嘻嘻 鄭耀飛</div>
        </div>
      </div>
    </div>
    <div class="flip-card" :class="{ flipped }" @click="flipped = !flipped">
      <div class="flip-card-inner">
        <div class="flip-card-front">
          <img src="cake.gif" style="display: block; width: 300px; height: 300px;" />
          <div>Happy Birthday</div>
        </div>
        <div class="flip-card-back">
          <img src="5.jpg" style="display: block; width: 250px; height: 50%; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); object-fit: cover;" />
          <img src="4.jpg" style="display: block; width: 250px; height: 50%; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); object-fit: cover;" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'app',
  data () {
    return {
      flipped: false
    }
  }
}
</script>

<style lang="scss">
* {
  margin: 0;
  padding: 0;
  line-height: 1rem;
  box-sizing: border-box;
}

#app {
  width: 100vw;
  height: 100vh;
  background-color: black;
  position: relative;

  .flip-card,
  .card {
    width: 600px;
    height: 400px;
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);

    .flip-card-inner,
    .card-inner {
      position: relative;
      width: 100%;
      height: 100%;

      .flip-card-front,
      .flip-card-back,
      .card-content {
        position: absolute;
        background-color: rgb(34, 139, 34);
        right: 0;
        width: 50%;
        height: 100%;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
      }
    }
  }

  .flip-card {
    background-color: transparent;
    perspective: 1000px;

    .flip-card-inner {
      text-align: center;
      transition: transform 0.6s;
      transform-style: preserve-3d;

      .flip-card-front,
      .flip-card-back {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        backface-visibility: hidden;
      }

      .flip-card-front {
        font-size: 2rem;
        font-weight: bold;
        color: white;
      }

      .flip-card-back {
        color: white;
        transform: rotateY(180deg);
      }
    }

    &.flipped .flip-card-inner {
      transform: rotateY(-180deg);
    }
  }

  .card {
    .card-inner {
      .card-content {
        padding: 32px;
        color: white;

      }
    }
  }
}
</style>
