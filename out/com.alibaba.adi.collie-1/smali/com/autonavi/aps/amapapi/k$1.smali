.class final Lcom/autonavi/aps/amapapi/k$1;
.super Ljava/lang/Object;
.source "Storage.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/aps/amapapi/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    check-cast p2, Lcom/autonavi/aps/amapapi/Upload$a;

    invoke-virtual {p2}, Lcom/autonavi/aps/amapapi/Upload$a;->a()Lcom/autonavi/aps/amapapi/Upload;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/k;->a(Lcom/autonavi/aps/amapapi/Upload;)V

    .line 34
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    return-void
.end method
