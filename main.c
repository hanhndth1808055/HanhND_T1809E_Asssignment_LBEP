#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <stdlib.h>

typedef struct {
    char maSinhVien[50];
    char ten[50];
    char soDienThoai[50];
} SinhVien;

void removeStdChar(char array[]) {
    if (strchr(array, '\n') == NULL) {
        while (fgetc(stdin) != '\n');
    }
}

FILE *fp;

int soSinhVien;
bool validateStudentNumber(int soSinhVien) {
    if (soSinhVien == 10) {
        printf("Ban da them qua muoi sinh vien!\n");
        return false;
    } else {
        return true;
    }
}

SinhVien sinhVien[10];

int themSinhVien() {
    printf("Moi nhap thong tin sinh vien.\n");
    int i = 0;
    for (i = 0; i < 11; i++) {
        soSinhVien = i;
        bool isValidateStudentNumber = validateStudentNumber(soSinhVien);
        if (isValidateStudentNumber == false) {
            break;
        } else {
            printf("Moi nhap ma so sinh vien cua sinh vien thu %d: \n", i + 1);
            fgets(sinhVien[i].maSinhVien, sizeof(sinhVien[i].maSinhVien), stdin);
            removeStdChar(sinhVien[i].maSinhVien);
            sinhVien[i].maSinhVien[strlen(sinhVien[i].maSinhVien) - 1] = ' ';
            while (strlen(sinhVien[i].maSinhVien) < 6){
                printf("Moi nhap lai ma sinh vien do khong du 5 ky tu: \n");
                fgets(sinhVien[i].maSinhVien, sizeof(sinhVien[i].maSinhVien), stdin);
                removeStdChar(sinhVien[i].maSinhVien);
                sinhVien[i].maSinhVien[strlen(sinhVien[i].maSinhVien) - 1] = ' ';
            }
            printf("Moi nhap ten sinh vien: \n");
            fgets(sinhVien[i].ten, sizeof(sinhVien[i].ten), stdin);
            removeStdChar(sinhVien[i].ten);
            sinhVien[i].ten[strlen(sinhVien[i].ten) - 1] = ' ';
            printf("Moi nhap so dien thoai: \n");
            fgets(sinhVien[i].soDienThoai, sizeof(sinhVien[i].soDienThoai), stdin);
            removeStdChar(sinhVien[i].soDienThoai);
            sinhVien[i].soDienThoai[strlen(sinhVien[i].soDienThoai) - 1] = ' ';
        int choice2;
            printf("Ban co muon tiep tuc? 1. Co | 2. Khong\n");
        scanf("%d", &choice2);
        getchar();
            if(choice2 == 2){
                return 0;
            }
        }
    }
}


void hienThiDanhSachSV() {
    printf("Danh sach sinh vien.\n");
    printf("|%-20s|%-20s|%-20s|\n", "Ma sinh vien", "Ten sinh vien", "So dien thoai");
    for (int i = 0; i < soSinhVien + 1; ++i) {
        printf("|%-20s|%-20s|%-20s|\n", sinhVien[i].maSinhVien, sinhVien[i].ten,
               sinhVien[i].soDienThoai);
    }
}

void docDanhSach() {
    fp = fopen("../danhsachsinhvien.txt", "r+");
    printf("Danh sach sinh vien da luu trong file la:\n");
    char varChar[1000];
    while (fgets(varChar, 1000, fp) != NULL) {
        printf("%s", varChar);
    }
    fclose(fp);
}

void luuDanhSach() {
    fp = fopen("../danhsachsinhvien.txt", "w+");
    fprintf(fp, "|%-20s", "Ma so sinh vien");
    fprintf(fp, "|%-20s", "Ten sinh vien");
    fprintf(fp, "|%-20s|\n", "So dien thoai");
    for (int i = 0; i < soSinhVien + 1; ++i) {
        fprintf(fp, "|%-20s", sinhVien[i].maSinhVien);
        fprintf(fp, "|%-20s", sinhVien[i].ten);
        fprintf(fp, "|%-20s|\n", sinhVien[i].soDienThoai);
    }
    fclose(fp);
    printf("Da luu danh sach sinh vien ra file nhu sau:\n");
    docDanhSach();
}

int main() {
    int choice;
    while(1) {
        printf("Menu\n");
        printf("1. Them moi sinh vien\n");
        printf("2. Hien thi danh sach sinh vien\n");
        printf("3. Luu danh sach sinh vien ra file\n");
        printf("4. Doc danh sach sinh vien tu file\n");
        printf("5. Thoat chuong trinh\n");
        printf("Moi nhap lua chon 1|2|3|4|5\n");
        scanf("%d", &choice);
        getchar();
        switch (choice) {
            case 1:
                themSinhVien();
                break;
            case 2:
                hienThiDanhSachSV();
                break;
            case 3:
                luuDanhSach();
                break;
            case 4:
                docDanhSach();
                break;
            case 5:
                printf("Thoat chuong trinh.\n");
                return 0;
            default:
                printf("Nhap sai yeu cau. Dung chuong trinh.\n");
                break;
        }
    }

}