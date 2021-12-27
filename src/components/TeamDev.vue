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
          <v-img
            src="../static/LOGO_header.png"
            alt="John"
            height="60px"
          ></v-img>
        </a>
        <v-spacer />
      </v-app-bar>
    </div>

    <!-- Form -->
    <div>
      <h1>fcasdfasd</h1>
    </div>

  </div>
</template>

<script>
  export default {
    data: () => ({
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

    }),
  }
</script>
