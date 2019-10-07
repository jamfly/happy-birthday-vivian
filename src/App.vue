<template>
  <div id="app">
    <div class="card">
      <div class="card-inner">
        <div class="card-content">
          <div style="font-size: 1.5rem; font-weight: 500">Hi, 猥神</div>
          <p style="margin-top: 32px; padding-left: 16px; line-height: 1.5rem;">
            臭叛徒，生日快樂。說好要一起待在臭宅陣線聯盟的呢？結果早早就脫魯，臭叛徒。雖然老早就知道你是 hacker1007，但是10/7來得太突然，突然到我來不及找一個假的女朋友去搞你，所以還是生日快樂好ㄌ
          </p>
          <br>
          <div style="text-align: right">不要臉 fork 威任專案的 Freddy</div>
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
          <img src="5.png" style="display: block; width: 250px; height: 50%; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); object-fit: cover;" />
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
