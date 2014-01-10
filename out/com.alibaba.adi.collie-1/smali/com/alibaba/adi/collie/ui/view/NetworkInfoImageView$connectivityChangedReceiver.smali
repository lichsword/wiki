.class public Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkInfoImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "connectivityChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;->this$0:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    return-void
.end method

.method private connectivityChanged(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, iconId:I
    const/4 v7, 0x0

    .line 79
    .local v7, wifiState:Landroid/net/NetworkInfo$State;
    const/4 v4, 0x0

    .line 80
    .local v4, mobileState:Landroid/net/NetworkInfo$State;
    const-string v8, "connectivity"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 81
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 86
    .local v6, wifiInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 87
    .local v3, mobileInfo:Landroid/net/NetworkInfo;
    if-eqz v6, :cond_1

    .line 88
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    .line 90
    :cond_1
    if-eqz v3, :cond_2

    .line 91
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 94
    :cond_2
    if-eqz v4, :cond_a

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v8, :cond_3

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v4, v8, :cond_a

    .line 96
    :cond_3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 97
    .local v2, info:Landroid/net/NetworkInfo;
    if-nez v2, :cond_4

    .line 99
    iget-object v8, p0, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;->this$0:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;

    invoke-virtual {v8, v9}, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;->setVisibility(I)V

    goto :goto_0

    .line 102
    :cond_4
    iget-object v8, p0, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;->this$0:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;

    invoke-virtual {v8, v10}, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;->setVisibility(I)V

    .line 104
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v5

    .line 105
    .local v5, networkType:I
    const/16 v8, 0xe

    if-eq v5, v8, :cond_5

    .line 106
    const/4 v8, 0x5

    if-eq v5, v8, :cond_5

    .line 107
    const/4 v8, 0x6

    if-eq v5, v8, :cond_5

    .line 108
    const/16 v8, 0xc

    if-eq v5, v8, :cond_5

    .line 109
    if-eq v5, v9, :cond_5

    .line 110
    const/16 v8, 0xa

    if-eq v5, v8, :cond_5

    .line 111
    const/16 v8, 0xf

    if-eq v5, v8, :cond_5

    .line 112
    const/16 v8, 0x9

    if-eq v5, v8, :cond_5

    .line 113
    const/4 v8, 0x3

    if-ne v5, v8, :cond_6

    .line 116
    :cond_5
    iget-object v8, p0, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;->this$0:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;

    const v9, 0x7f0201ca

    invoke-virtual {v8, v9}, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 118
    :cond_6
    const/4 v8, 0x7

    if-eq v5, v8, :cond_7

    .line 119
    const/4 v8, 0x4

    if-eq v5, v8, :cond_7

    .line 120
    const/4 v8, 0x2

    if-eq v5, v8, :cond_7

    .line 121
    if-eq v5, v11, :cond_7

    .line 122
    const/16 v8, 0xb

    if-ne v5, v8, :cond_8

    .line 125
    :cond_7
    iget-object v8, p0, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;->this$0:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;

    const v9, 0x7f0201c9

    invoke-virtual {v8, v9}, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 126
    :cond_8
    const/16 v8, 0xd

    if-ne v5, v8, :cond_9

    .line 128
    iget-object v8, p0, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;->this$0:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;

    const v9, 0x7f0201cb

    invoke-virtual {v8, v9}, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 130
    :cond_9
    iget-object v8, p0, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;->this$0:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;

    invoke-virtual {v8, v9}, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 134
    .end local v2           #info:Landroid/net/NetworkInfo;
    .end local v5           #networkType:I
    :cond_a
    if-eqz v7, :cond_c

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v7, v8, :cond_b

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v7, v8, :cond_c

    .line 136
    :cond_b
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;->wifiRssiChanged(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 140
    :cond_c
    iget-object v8, p0, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;->this$0:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;

    invoke-virtual {v8, v9}, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private wifiRssiChanged(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 147
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 149
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 150
    .local v0, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v1

    .line 152
    .local v1, strength:I
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;->this$0:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;->setVisibility(I)V

    .line 153
    packed-switch v1, :pswitch_data_0

    .line 164
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;->this$0:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;

    const v4, 0x7f0201d0

    invoke-virtual {v3, v4}, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;->setBackgroundResource(I)V

    .line 168
    :goto_0
    return-void

    .line 155
    :pswitch_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;->this$0:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;

    const v4, 0x7f0201cc

    invoke-virtual {v3, v4}, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 158
    :pswitch_1
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;->this$0:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;

    const v4, 0x7f0201ce

    invoke-virtual {v3, v4}, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;->this$0:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;

    const v4, 0x7f0201cf

    invoke-virtual {v3, v4}, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;->connectivityChanged(Landroid/content/Context;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;->wifiRssiChanged(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public register()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/adi/collie/CoreApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/CoreApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 74
    return-void
.end method
