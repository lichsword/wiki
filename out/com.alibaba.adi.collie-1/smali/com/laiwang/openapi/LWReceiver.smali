.class public Lcom/laiwang/openapi/LWReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LWReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 12
    invoke-static {}, Lcom/laiwang/openapi/LWAPIFactory;->createLWAPI()Lcom/laiwang/openapi/ILWAPI;

    move-result-object v0

    .line 18
    .local v0, iLWAPI:Lcom/laiwang/openapi/ILWAPI;
    const-string v1, "Test"

    const-string v2, "Ireceive"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method
