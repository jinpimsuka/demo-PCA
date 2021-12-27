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
            height="50px"
          ></v-img>
        </a>
        <v-spacer />
      </v-app-bar>
    </div>

    <!-- Form -->
    
      <v-row align="center" justify="center">
        <v-col cols="12" md="12">
          <!-- เลื่อน Head -->
          <v-card class="mt-1">
            <v-window v-model="step">
              <!-- Form อสม. -->
              <div class="log-in-form">
                <form action="#" method="POST">
                  <v-window-item :value="1">
                    <v-row cols="12" md="6">
                      <v-col cols="12" md="6">

                        <v-row>
                          <v-spacer />
                          <v-avatar class="mt-10 center" size="70">
                            <img alt="user" src="../static/logo-VHV.png" />
                          </v-avatar>
                          <v-spacer />
                        </v-row>

                        <v-card-text class="center">
                          <h3 class="text-center">
                            อาสาสมัครสาธารณสุขประจำหมู่บ้าน (อสม.)
                          </h3>
                          <h6 class="text-center grey--text">
                            กรุณาเข้าสู่ระบบก่อนทำการกรอกข้อมูล
                          </h6>

                          <v-row align="center" justify="center">
                            <v-col cols="12" sm="6">
                              <v-text-field
                                outlined
                                required
                                dense
                                autocomplete="false"
                                placeholder="** ชื่อผู้ใช้งาน (อสม.) **"
                                class="mt-10 form-control"
                                name="username"
                                v-model="vhv.username"
                              />
                              <v-text-field
                                outlined
                                required
                                dense
                                autocomplete="false"
                                placeholder="** รหัสผ่าน **"
                                class="form-control"
                                name="password"
                                v-model="vhv.password"
                              />

                              <v-btn
                                @click.prevent="onLoginVhv()"
                                color="light-blue lighten-1"
                                dark
                                block
                                tile
                              >
                                เข้าสู่ระบบ
                              </v-btn>
                            </v-col>
                          </v-row>
                        </v-card-text>
                      </v-col>

                      <v-col
                        cols="12"
                        md="6"
                        class="light-blue lighten-3 rounded-br-xl"
                      >
                        <div style="text-align: center; padding: 40px 0">
                          <v-card-text class="black--text">
                            <h3 class="text-center">
                              เจ้าหน้าที่คลินิกหมอครอบครัว
                            </h3>
                            <h6 class="text-center">เข้าสู่ระบบตรงนี้</h6>
                          </v-card-text>
                          <div class="text-center">
                            <v-btn tile outlined @click="step++"> เลือก </v-btn>
                          </div>
                        </div>
                      </v-col>
                    </v-row>
                  </v-window-item>
                </form>
              </div>

              <!-- Form เจ้าหน้าที่ -->
              <v-window-item :value="2">
                <v-row>
                  <v-col
                    cols="12"
                    md="6"
                    class="light-green lighten-2 rounded-br-xl"
                  >
                    <div style="text-align: center; padding: 40px 0">
                      <v-card-text class="black--text">
                        <h3 class="text-center">
                          อาสาสมัครสาธารณสุขประจำหมู่บ้าน (อสม.)
                        </h3>
                        <h6 class="text-center">เข้าสู่ระบบตรงนี้</h6>
                      </v-card-text>
                      <div class="text-center">
                        <v-btn tile outlined @click="step--"> เลือก </v-btn>
                      </div>
                    </div>
                  </v-col>

                  <v-col cols="12" md="6">
                    <v-row>
                      <v-spacer />
                          <v-avatar class="mt-10 center" size="70">
                            <img alt="user" src="../static/logo-FMCRH.png" />
                          </v-avatar>
                          <v-spacer />
                    </v-row>
                    <v-card-text class="mt-2 center">
                      <h3 class="text-center">เจ้าหน้าที่คลินิกหมอครอบครัว</h3>
                      <h6 class="text-center grey--text">
                        กรุณาเข้าสู่ระบบก่อนทำการกรอกข้อมูล
                      </h6>

                      <v-row align="center" justify="center">
                        
                        <v-col cols="16" sm="6">
                          <v-text-field
                            outlined
                            required
                            dense
                            autocomplete="false"
                            placeholder="** ชื่อผู้ใช้งาน **"
                            class="mt-10 form-control"
                            name="username"
                            v-model="fmcrh.username"
                          />
                          <v-text-field
                            outlined
                            required
                            dense
                            utocomplete="false"
                            placeholder="** รหัสผ่าน **"
                            class="form-control"
                            name="password"
                            v-model="fmcrh.password"
                          />

                          <v-btn
                            @click.prevent="onLoginFmcrh()"
                            color="light-blue lighten-1"
                            dark
                            block
                            tile
                          >
                            เข้าสู่ระบบ
                          </v-btn>
                        </v-col>
                      </v-row>
                    </v-card-text>
                  </v-col>
                </v-row>
              </v-window-item>
            </v-window>
          </v-card>
        </v-col>
      </v-row>
    
    
  </div>
</template>

<script>
import axios from "axios";

export default {
  //name: "Home",

  data() {
    return {
      clipped: false,
      drawer: false,
      fixed: false,
      step: 1,

      vhv: {
        username: null,
        password: null,
      },
      fmcrh: {
        username: null,
        password: null,
      },
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
    };
  },

  methods: {
    onLoginVhv() {
      var datavhv = new FormData();
      datavhv.append("username", this.vhv.username);
      datavhv.append("password", this.vhv.password);

      axios
        .post(
          "http://localhost/demo-PCA/src/Api/loginvhv.php?action=login",
          datavhv
        )
        .then((res) => {
          if (res.data.error) {
            console.log("Error", res.data);
            
            alert(res.data.message);
          } else {
            console.log("Success", res.data.message);
            alert(res.data.message);
            this.$router.push("./FormVhv");
          }
        })
        .catch((err) => {
          console.log("Error", err);
        });
    },

    onLoginFmcrh() {
      var datafmcrh = new FormData();
      datafmcrh.append("username", this.fmcrh.username);
      datafmcrh.append("password", this.fmcrh.password);

      axios
        .post(
          "http://localhost/demo-PCA/src/Api/loginfmcrh.php?action=login",
          datafmcrh
        )
        .then((res) => {
          if (res.data.error) {
            console.log("Error", res.data);
            alert(res.data.message);
          } else {
            console.log("Success", res.data.message);
            alert(res.data.message);
            this.$router.push("./Form");
          }
        })
        .catch((err) => {
          console.log("Error", err);
        });
    },
  },
};
</script>


<style scoped>
.v-application .rounded-bl-xl {
  border-bottom-left-radius: 300px !important;
}
.v-application .rounded-br-xl {
  border-bottom-right-radius: 300px !important;
}
</style>
