.class Lcom/laiwang/openapi/IILWAPIChannelProxy$LaiwangConnection;
.super Ljava/lang/Object;
.source "IILWAPIChannelProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/openapi/IILWAPIChannelProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaiwangConnection"
.end annotation


# instance fields
.field private mISDKConnListener:Lcom/laiwang/openapi/IILWAPIChannelProxy$ISDKConnListener;

.field final synthetic this$0:Lcom/laiwang/openapi/IILWAPIChannelProxy;


# direct methods
.method public constructor <init>(Lcom/laiwang/openapi/IILWAPIChannelProxy;Lcom/laiwang/openapi/IILWAPIChannelProxy$ISDKConnListener;)V
    .locals 0
    .parameter
    .parameter "iSDKConnListener"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy$LaiwangConnection;->this$0:Lcom/laiwang/openapi/IILWAPIChannelProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy$LaiwangConnection;->mISDKConnListener:Lcom/laiwang/openapi/IILWAPIChannelProxy$ISDKConnListener;

    .line 123
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy$LaiwangConnection;->this$0:Lcom/laiwang/openapi/IILWAPIChannelProxy;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy$LaiwangConnection;->this$0:Lcom/laiwang/openapi/IILWAPIChannelProxy;

    #getter for: Lcom/laiwang/openapi/IILWAPIChannelProxy;->mTimeStemp:J
    invoke-static {v3}, Lcom/laiwang/openapi/IILWAPIChannelProxy;->access$0(Lcom/laiwang/openapi/IILWAPIChannelProxy;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    #setter for: Lcom/laiwang/openapi/IILWAPIChannelProxy;->mTimeStemp:J
    invoke-static {v0, v1, v2}, Lcom/laiwang/openapi/IILWAPIChannelProxy;->access$1(Lcom/laiwang/openapi/IILWAPIChannelProxy;J)V

    .line 128
    const-string v0, "LWAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Laiwang service connected, time:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy$LaiwangConnection;->this$0:Lcom/laiwang/openapi/IILWAPIChannelProxy;

    #getter for: Lcom/laiwang/openapi/IILWAPIChannelProxy;->mTimeStemp:J
    invoke-static {v2}, Lcom/laiwang/openapi/IILWAPIChannelProxy;->access$0(Lcom/laiwang/openapi/IILWAPIChannelProxy;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy$LaiwangConnection;->this$0:Lcom/laiwang/openapi/IILWAPIChannelProxy;

    invoke-static {p2}, Lcom/laiwang/openapi/service/IILWAPIChannel$Stub;->asInterface(Landroid/os/IBinder;)Lcom/laiwang/openapi/service/IILWAPIChannel;

    move-result-object v1

    #setter for: Lcom/laiwang/openapi/IILWAPIChannelProxy;->mLWApiProxy:Lcom/laiwang/openapi/service/IILWAPIChannel;
    invoke-static {v0, v1}, Lcom/laiwang/openapi/IILWAPIChannelProxy;->access$2(Lcom/laiwang/openapi/IILWAPIChannelProxy;Lcom/laiwang/openapi/service/IILWAPIChannel;)V

    .line 149
    iget-object v0, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy$LaiwangConnection;->mISDKConnListener:Lcom/laiwang/openapi/IILWAPIChannelProxy$ISDKConnListener;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy$LaiwangConnection;->mISDKConnListener:Lcom/laiwang/openapi/IILWAPIChannelProxy$ISDKConnListener;

    invoke-interface {v0}, Lcom/laiwang/openapi/IILWAPIChannelProxy$ISDKConnListener;->onStart()V

    .line 153
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 157
    const-string v0, "LWAPI"

    const-string v1, "Laiwang service diconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy$LaiwangConnection;->this$0:Lcom/laiwang/openapi/IILWAPIChannelProxy;

    const/4 v1, 0x0

    #setter for: Lcom/laiwang/openapi/IILWAPIChannelProxy;->mLWApiProxy:Lcom/laiwang/openapi/service/IILWAPIChannel;
    invoke-static {v0, v1}, Lcom/laiwang/openapi/IILWAPIChannelProxy;->access$2(Lcom/laiwang/openapi/IILWAPIChannelProxy;Lcom/laiwang/openapi/service/IILWAPIChannel;)V

    .line 160
    sget-boolean v0, Lcom/laiwang/openapi/LWAPI;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "SDK:laiwang diconnected"

    invoke-static {}, Lcom/laiwang/openapi/LWAPI;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/laiwang/openapi/LWAPINotification;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy$LaiwangConnection;->mISDKConnListener:Lcom/laiwang/openapi/IILWAPIChannelProxy$ISDKConnListener;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/laiwang/openapi/IILWAPIChannelProxy$LaiwangConnection;->mISDKConnListener:Lcom/laiwang/openapi/IILWAPIChannelProxy$ISDKConnListener;

    invoke-interface {v0}, Lcom/laiwang/openapi/IILWAPIChannelProxy$ISDKConnListener;->onStop()V

    .line 166
    :cond_1
    return-void
.end method
