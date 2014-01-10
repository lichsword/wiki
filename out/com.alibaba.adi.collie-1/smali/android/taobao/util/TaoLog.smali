.class public final Landroid/taobao/util/TaoLog;
.super Ljava/lang/Object;
.source "TaoLog.java"


# static fields
.field public static final APICONNECT_TAG:Ljava/lang/String; = "TaoSdk.ApiRequest"

.field public static final ENDCASE_TAG:Ljava/lang/String; = "TaoSdk.EndUT"

.field public static final ETAOLOCAL_TAG:Ljava/lang/String; = "EtaoLocal"

.field public static final ETAO_APIURL_TAG:Ljava/lang/String; = "etao_apiurl"

.field public static final ETAO_TAG:Ljava/lang/String; = "Etao"

.field public static final IMGPOOL_TAG:Ljava/lang/String; = "TaoSdk.ImgPool"

.field public static final MEM_TRACE:Ljava/lang/String; = "mem_Trace"

.field public static final PANELMANAGER_TAG:Ljava/lang/String; = "PanelManager"

.field public static final SIGN_TAG:Ljava/lang/String; = "tag_sign"

.field public static final STARTUTCASE_TAG:Ljava/lang/String; = "TaoSdk.StartUT"

.field public static final TAOBAO_TAG:Ljava/lang/String; = "Taobao"

.field private static isPrintLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    sput-boolean v0, Landroid/taobao/util/TaoLog;->isPrintLog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 37
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 39
    sget-boolean v0, Landroid/taobao/util/TaoLog;->isPrintLog:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return-void
.end method

.method public static Loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 51
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 53
    sget-boolean v0, Landroid/taobao/util/TaoLog;->isPrintLog:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    return-void
.end method

.method public static Logi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 64
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 66
    sget-boolean v0, Landroid/taobao/util/TaoLog;->isPrintLog:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    return-void
.end method

.method public static Logv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 77
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 79
    sget-boolean v0, Landroid/taobao/util/TaoLog;->isPrintLog:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    return-void
.end method

.method public static Logw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 90
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 92
    sget-boolean v0, Landroid/taobao/util/TaoLog;->isPrintLog:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    return-void
.end method

.method public static getLogStatus()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Landroid/taobao/util/TaoLog;->isPrintLog:Z

    return v0
.end method

.method public static setLogSwitcher(Z)V
    .locals 0
    .parameter "open"

    .prologue
    .line 32
    sput-boolean p0, Landroid/taobao/util/TaoLog;->isPrintLog:Z

    .line 33
    return-void
.end method
