<template>
  <div>
    <!-- header -->
    <div>
      <v-navigation-drawer v-model="drawer" :clipped="clipped" fixed app>
        <v-list>
          <v-list-item
            v-for="(item, i) in items"
            :key="i"
            :to="item.to"
            router
            exact
          >
            <v-list-item-action>
              <v-icon color="teal darken-3">{{ item.icon }}</v-icon>
            </v-list-item-action>
            <v-list-item-content>
              <v-list-item-title v-text="item.title" />
            </v-list-item-content>
          </v-list-item>
        </v-list>
      </v-navigation-drawer>

      <v-app-bar app>
        <v-app-bar-nav-icon @click.stop="drawer = !drawer" />
        <a class="navbar-brand">
          <v-img src="../static/LOGO_header.png" height="50px"></v-img>
        </a>
        <v-spacer />
        <v-avatar>
          <img src="../static/logo-FMCRH.png" />
        </v-avatar>
      </v-app-bar>
    </div>

    <!-- data table -->
    <div>
      <h1>test</h1>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      clipped: false,
      drawer: false,
      fixed: false,

      items: [
        {
          icon: "mdi-lead-pencil",
          title: "กรอกข้อมูล",
          to: "Form",
        },
        {
          icon: "mdi-view-dashboard-variant",
          title: "แดชบอร์ด",
          to: "dashboard",
        },
        {
          icon: "mdi-account-edit",
          title: "ผู้จัดทำ",
          to: "TeamDev",
        },
      ],

      UsersData: {
        CID: null,
        HN: null,
        Prename: null,
        f_name: null,
        l_name: null,
        HouseNo: null,
        Moo: null,
        Village: null,
        PCC: null,
        Amphur: null,
        TypeArea: null,
        Tel: null,
        birhtdate: null,
        status: null,
        deaddate: null,
      },
      Users: [],
    };
  },
};
</script>