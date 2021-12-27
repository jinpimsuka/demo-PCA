<template>
  <v-app>
 
    <v-main>
      <router-view/>
      
    </v-main>

        <!-- footer -->
    <div>
      <v-footer padless color="green lighten-1">
        <v-card-text class="py-2 white--text text-center">
          <v-btn
            v-for="icon in icons"
            :key="icon"
            class="mx-2 white--text"
            icon
          >
            <v-icon size="24px">
              {{ icon }}
            </v-icon>
          </v-btn>
          <h3>Tel. 053-910600</h3>
          <h3>E-mail: staff@fmcrh.org</h3>
        </v-card-text>
        <v-spacer />

        <!-- contact -->
        <v-spacer />
        <v-card-text class="py-2 white--text text-center">
          <h2>กลุ่มงานเวชกรรมสังคม โรงพยาบาลเชียงรายประชานุเคราะห์</h2>
          <h3>ตำบลเวียง อำเภอเมือง จังหวัดเชียงราย 57000</h3>
        </v-card-text>

        <!-- Copyright -->
        <v-divider></v-divider>
        <v-card-text class="py-2 white--text text-center">
          <strong>Copyright</strong> © {{ new Date().getFullYear() }}
        </v-card-text>
      </v-footer>
    </div>

  </v-app>
</template>

<script>

export default {
  name: 'App',

  data() {
    return {
      clipped: false,
      drawer: false,
      fixed: false,
      items: [
        {
          icon: "mdi-account-group-outline ",
          title: "เข้าสู่ระบบ",
          to: "/",
        },
        {
          icon: "mdi-clipboard-edit-outline",
          title: "ผู้จัดทำ",
          to: "TeamDev",
        },
      ],
      icons: ["mdi-phone-in-talk", "mdi-gmail"],
      title: "คลินิกหมอครอบครัว",
    };
    
  },
};
</script>
