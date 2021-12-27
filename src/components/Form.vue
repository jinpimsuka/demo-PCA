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

    <!-- FORM -->
    <div class="my-4">
      <!-- add users model -->
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <form action="" method="POST">
            <div class="text-center">
              <br />
              <h1>แบบฟอร์มสำหรับกรอกข้อมูล</h1>

              <v-card flat>
                <v-form ref="form" @submit.prevent="submit">
                  <v-container fluid>
                    <v-row>
                      <!-- CID -->
                      <v-col cols="6" sm="6">
                        <v-text-field
                          type="number"
                          label="เลขบัตรประจำตัวประชาชน *"
                          class="form-control"
                          id="CID"
                          name="CID"
                          v-model="UsersData.CID"
                          required
                        ></v-text-field>
                      </v-col>

                      <!-- HN -->
                      <v-col cols="6" sm="6">
                        <v-text-field
                          type="text"
                          label="เลขผู้ป่วยนอก *"
                          class="form-control"
                          id="HN"
                          name="HN"
                          v-model="UsersData.HN"
                          required
                        ></v-text-field>
                      </v-col>

                      <!-- /// Title / Prename /// -->
                      <v-col cols="3" sm="2" class="d-flex">
                        <v-combobox
                          class="form-control"
                          name="Prename"
                          id="Prename"
                          v-model="UsersData.Prename"
                          :items="[
                            'เด็กชาย',
                            'เด็กหญิง',
                            'นาย',
                            'นาง',
                            'นางสาว',
                          ]"
                          label="คำนำหน้า"
                        ></v-combobox>
                      </v-col>

                      <!-- First Name -->
                      <v-col cols="4" sm="5">
                        <v-text-field
                          type="text"
                          label="ชื่อจริง *"
                          class="form-control"
                          id="f_name"
                          name="f_name"
                          v-model="UsersData.f_name"
                          required
                        ></v-text-field>
                      </v-col>

                      <!-- Last Name -->
                      <v-col cols="4" sm="5">
                        <v-text-field
                          type="text"
                          label="นามสกุล *"
                          class="form-control"
                          id="l_name"
                          name="l_name"
                          v-model="UsersData.l_name"
                          required
                        ></v-text-field>
                      </v-col>

                      <!-- House No. -->
                      <v-col cols="2" sm="2">
                        <v-text-field
                          type="text"
                          label="บ้านเลขที่"
                          class="form-control"
                          id="HouseNo"
                          name="HouseNo"
                          v-model="UsersData.HouseNo"
                        ></v-text-field>
                      </v-col>

                      <!-- Moo -->
                      <v-col cols="2" sm="2">
                        <v-text-field
                          type="number"
                          label="หมู่ที่"
                          class="form-control"
                          id="Moo"
                          name="Moo"
                          v-model="UsersData.Moo"
                        ></v-text-field>
                      </v-col>

                      <!-- Village -->
                      <v-col cols="3" sm="2">
                        <v-combobox
                          class="form-control"
                          name="Village"
                          id="Village"
                          v-model="UsersData.Village"
                          :items="[
                            'ธารน้ำกรณ์',
                            'แม่กรณ์',
                            'ดอยพระบาท',
                            'รอยพระพุทธบาท',
                            'ดอยเขาควาย',
                            'หนองเหียง',
                            'วัดใหม่หน้าค่าย',
                            'เด่นห้า',
                            'สันกลาง',
                            'สันคอกช้าง',
                            'สันเมืองเหล็ก',
                            'ป่าส้าน',
                            'ป่าตึง',
                            'สันป่าก่อเหนือ',
                            'สันป่าก่อไทยใหญ่',
                            'สันสุด',
                            'สันป่าหนาด',
                            'รั้วเหล็กเหนือ',
                            'รั้วเหล็กใต้',
                            'ศรีเกิด',
                            'กองยาว',
                            'หน้าสนามกีฬา',
                            'บ้านไร่',
                            'แควหวาย',
                            'วังดิน',
                            'เกาะทอง',
                            'ริมน้ำกก',
                            'กกโท้งพุทธ',
                            'มุสลิมกกโท้ง',
                            'สันโค้งหลวง',
                            'สันโค้งน้อย',
                            'ประตูเชียงใหม่',
                            'เจ็ดยอด',
                          ]"
                          label="ชื่อชุมชน *"
                        ></v-combobox>
                      </v-col>

                      <!-- PCC -->
                      <v-col cols="3" sm="2">
                        <v-combobox
                          class="form-control"
                          name="PCC"
                          id="PCC"
                          v-model="UsersData.PCC"
                          :items="[1, 2, 3, 4]"
                          label="เขตรับผิดชอบ (PCC)"
                        ></v-combobox>
                      </v-col>

                      <!-- Amphur -->
                      <v-col cols="4" sm="4">
                        <v-combobox
                          class="form-control"
                          name="Amphur"
                          id="Amphur"
                          v-model="UsersData.Amphur"
                          :items="[
                            'เมืองเชียงราย',
                            'เวียง',
                            'รอบเวียง',
                            'บ้านดู่',
                            'นางแล',
                            'แม่ข้าวต้ม',
                            'แม่ยาว',
                          ]"
                          label="อำเภอ"
                        ></v-combobox>
                      </v-col>

                      <!-- TypeArea -->
                      <v-col cols="6" sm="6">
                        <v-combobox
                          class="form-control"
                          name="TypeArea"
                          id="TypeArea"
                          v-model="UsersData.TypeArea"
                          :items="[
                            '1: มีชื่ออยู่ตามทะเบียนในเขตรับผิดชอบและอยู่จริง',
                            '2: มีชื่ออยู่ตามทะเบียนในเขตรับผิดชอบแต่ตัวไม่อยู่จริง',
                            '3: มาอาศัยอยู่ในเขตรับผิดชอบแต่ทะเบียนบ้านอยู่นอกเขตรับผิดชอบ',
                            '4: ที่อาศัยอยู่นอกเขตและทะเบียนบ้านไม่อยู่ในเขตรับผิดชอบ',
                            '5: มาอาศัยในเขตรับผิดชอบแต่ไม่ได้อยู่ตามทะเบียนบ้านในเขตรับผิดชอบ',
                          ]"
                          label="สถานะบุคคล"
                        ></v-combobox>
                      </v-col>

                      <!-- Tel -->
                      <v-col cols="3" sm="3">
                        <v-text-field
                          type="number"
                          label="หมายเลขโทรศัพท์"
                          class="form-control"
                          id="Tel"
                          name="Tel"
                          v-model="UsersData.Tel"
                          required
                        ></v-text-field>
                      </v-col>

                      <!-- birhtdate -->
                      <v-col cols="3" sm="3">
                        <v-menu>
                          <template v-slot:activator="{ on, attrs }">
                            <v-text-field
                              ref="birhtdate"
                              class="form-control"
                              name="birhtdate"
                              id="birhtdate"
                              v-model="UsersData.birhtdate"
                              label="วันที่เกิด"
                              prepend-icon="mdi-calendar"
                              readonly
                              v-bind="attrs"
                              v-on="on"
                            ></v-text-field>
                          </template>
                          <v-date-picker v-model="UsersData.birhtdate" no-title scrollable>
                            <v-spacer></v-spacer>
                            <v-btn
                              text
                            color="primary"
                            @click="$refs.birhtdate.save(UsersData.birhtdate)"
                            >
                              เลือก
                            </v-btn>
                          </v-date-picker>
                        </v-menu>
                      </v-col>

                      <!-- status -->
                      <v-col cols="3" sm="3">
                        <v-combobox
                          class="form-control"
                          name="status"
                          id="status"
                          v-model="UsersData.status"
                          :items="['เสียชีวิต', 'ยังมีชีวิตอยู่', 'ไม่ทราบสถานะ']"
                          label="สถานะการมีอยู่"
                        ></v-combobox>
                      </v-col>

                      <!-- deaddate -->
                      <v-col cols="3" sm="3">
                        <v-menu>
                          <template v-slot:activator="{ on, attrs }">
                            <v-text-field
                              ref="deaddate"
                              class="form-control"
                              name="deaddate"
                              id="deaddate"
                              v-model="UsersData.deaddate"
                              label="วันที่เสียชีวิต"
                              prepend-icon="mdi-calendar"
                              readonly
                              v-bind="attrs"
                              v-on="on"
                            ></v-text-field>
                          </template>
                          <v-date-picker v-model="UsersData.deaddate" no-title scrollable>
                            <v-spacer></v-spacer>
                            <v-btn
                              text
                            color="primary"
                            @click="$refs.deaddate.save(UsersData.deaddate)"
                            >
                              เลือก
                            </v-btn>
                          </v-date-picker>
                        </v-menu>
                      </v-col>

                    </v-row>
                  </v-container>
                </v-form>
              </v-card>

              <!-- button -->
              <v-btn
                type="button"
                elevation="3"
                plain
                color="blue darken-5"
                @click="AddUsers()"
              >
                บันทึกข้อมูล
              </v-btn>
            </div>

          </form>
        </div>
      </div>

      <!-- ad user modal end -->
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "users",
  
  data() {
    return {
      clipped: false,
      drawer: false,
      fixed: false,

      items: [
        {
          icon: "mdi-table-edit",
          title: "ตารางข้อมูล",
          to: "dataTable",
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

  methods: {
    AddUsers() {
      let data = new FormData();
      data.append("CID", this.UsersData.CID);
      data.append("HN", this.UsersData.HN);
      data.append("Prename", this.UsersData.Prename);
      data.append("f_name", this.UsersData.f_name);
      data.append("l_name", this.UsersData.l_name);
      data.append("HouseNo", this.UsersData.HouseNo);
      data.append("Moo", this.UsersData.Moo);
      data.append("Village", this.UsersData.Village);
      data.append("PCC", this.UsersData.PCC);
      data.append("Amphur", this.UsersData.Amphur);
      data.append("TypeArea", this.UsersData.TypeArea);
      data.append("Tel", this.UsersData.Tel);
      data.append("birhtdate", this.UsersData.birhtdate);
      data.append("status", this.UsersData.status);
      data.append("deaddate", this.UsersData.deaddate);

      axios
        .post(
          "http://localhost/demo-PCA/src/Api/addedDataFmcrh.php?action=addusers",
          data
        )
        .then((res) => {
          if (res.data.error) {
            alert("Error");
          } else {
            alert(res.data.message);
          }
        })
        .catch((err) => {
          console.log(err);
        });
    },
  },
};
</script>