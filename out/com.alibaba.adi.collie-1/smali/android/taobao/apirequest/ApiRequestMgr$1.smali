.class Landroid/taobao/apirequest/ApiRequestMgr$1;
.super Landroid/content/BroadcastReceiver;
.source "ApiRequestMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/ApiRequestMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/apirequest/ApiRequestMgr;


# direct methods
.method constructor <init>(Landroid/taobao/apirequest/ApiRequestMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Landroid/taobao/apirequest/ApiRequestMgr$1;->this$0:Landroid/taobao/apirequest/ApiRequestMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 118
    const-string v0, "TaoSdk.ApiRequest"

    const-string v1, "ApiRequestMgr onReceive"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Landroid/taobao/apirequest/ApiRequestMgr$1;->this$0:Landroid/taobao/apirequest/ApiRequestMgr;

    invoke-virtual {v0}, Landroid/taobao/apirequest/ApiRequestMgr;->UpdateNetworkStatus()V

    .line 120
    return-void
.end method
