.class public Lcom/taobao/android/sso/internal/PidGetterService;
.super Landroid/app/Service;
.source "PidGetterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/sso/internal/PidGetterService$PidGetter;
    }
.end annotation


# static fields
.field public static final FETCH_ADDACCOUNT_PIDSTATE:I = 0x3

.field public static final FETCH_GETAUTHTOKEN_PIDSTATE:I = 0x2

.field public static final PID_INVALIDATE_TIME:I = 0xea60

.field public static final REPORT_PID:I = 0x1

.field public static sIsAddAccountHasPid:Z

.field public static sIsGetAuthTokenHasPid:Z

.field public static sTokenArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/taobao/android/sso/internal/TokenInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPidGetter:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/taobao/android/sso/internal/PidGetterService;->sTokenArray:Landroid/util/SparseArray;

    .line 32
    sput-boolean v1, Lcom/taobao/android/sso/internal/PidGetterService;->sIsGetAuthTokenHasPid:Z

    .line 33
    sput-boolean v1, Lcom/taobao/android/sso/internal/PidGetterService;->sIsAddAccountHasPid:Z

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 42
    const-string v0, "sso"

    const-string v1, "PidGetterService binded"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/taobao/android/sso/internal/PidGetterService;->mPidGetter:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/taobao/android/sso/internal/PidGetterService$PidGetter;

    invoke-direct {v0, p0}, Lcom/taobao/android/sso/internal/PidGetterService$PidGetter;-><init>(Lcom/taobao/android/sso/internal/PidGetterService;)V

    iput-object v0, p0, Lcom/taobao/android/sso/internal/PidGetterService;->mPidGetter:Landroid/os/IBinder;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/sso/internal/PidGetterService;->mPidGetter:Landroid/os/IBinder;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 57
    const-string v0, "sso"

    const-string v1, "PidGetterService stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 59
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 51
    const-string v0, "sso"

    const-string v1, "PidGetterService started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 53
    return-void
.end method
