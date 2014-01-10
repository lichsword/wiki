.class public Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/AdiNewsRegisStrGenerator;
.super Ljava/lang/Object;
.source "AdiNewsRegisStrGenerator.java"

# interfaces
.implements Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/IAdiGetReqStrGenerator;


# static fields
.field private static final TEMPLATE:Ljava/lang/String; = "udid=%s&mc=%s&os=Android&os_version=%s&device_model=%s&language=chinese"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 17
    const-string v4, ""

    .line 18
    .local v4, udid:Ljava/lang/String;
    sget-object v5, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Lcom/alibaba/adi/collie/CoreApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 19
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_0

    .line 20
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 22
    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/util/PhoneUtil;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, mac:Ljava/lang/String;
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 24
    .local v2, osVer:Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 25
    .local v1, model:Ljava/lang/String;
    const-string v5, "udid=%s&mc=%s&os=Android&os_version=%s&device_model=%s&language=chinese"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v7, 0x2

    aput-object v2, v6, v7

    const/4 v7, 0x3

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
