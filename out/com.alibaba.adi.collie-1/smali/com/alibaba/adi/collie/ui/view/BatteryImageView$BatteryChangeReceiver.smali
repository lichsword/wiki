.class public Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/view/BatteryImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatteryChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/view/BatteryImageView;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/view/BatteryImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;->this$0:Lcom/alibaba/adi/collie/ui/view/BatteryImageView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    return-void
.end method

.method private onBatteryStateChange(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const/16 v12, 0x28

    const/16 v11, 0x1e

    const/16 v10, 0x14

    const/16 v9, 0xa

    const/4 v8, -0x1

    .line 57
    const-string v7, "level"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 58
    .local v3, rawlevel:I
    const-string v7, "scale"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 59
    .local v5, scale:I
    const-string v7, "status"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 60
    .local v6, status:I
    const-string v7, "health"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 61
    .local v0, health:I
    const/4 v2, -0x1

    .line 62
    .local v2, level:I
    if-ltz v3, :cond_0

    if-lez v5, :cond_0

    .line 63
    mul-int/lit8 v7, v3, 0x64

    div-int v2, v7, v5

    .line 65
    :cond_0
    const/4 v7, 0x3

    if-eq v7, v0, :cond_1

    .line 68
    packed-switch v6, :pswitch_data_0

    .line 138
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 73
    :pswitch_1
    const/4 v1, 0x0

    .line 74
    .local v1, iconId:I
    const/16 v7, 0x64

    if-ne v7, v2, :cond_2

    .line 75
    const v1, 0x7f02008c

    .line 99
    :goto_1
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;->this$0:Lcom/alibaba/adi/collie/ui/view/BatteryImageView;

    invoke-virtual {v7, v1}, Lcom/alibaba/adi/collie/ui/view/BatteryImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 76
    :cond_2
    const/16 v7, 0x5a

    if-lt v2, v7, :cond_3

    const/16 v7, 0x64

    if-ge v2, v7, :cond_3

    .line 77
    const v1, 0x7f020094

    .line 78
    goto :goto_1

    :cond_3
    const/16 v7, 0x50

    if-lt v2, v7, :cond_4

    const/16 v7, 0x5a

    if-ge v2, v7, :cond_4

    .line 79
    const v1, 0x7f020093

    .line 80
    goto :goto_1

    :cond_4
    const/16 v7, 0x46

    if-lt v2, v7, :cond_5

    const/16 v7, 0x50

    if-ge v2, v7, :cond_5

    .line 81
    const v1, 0x7f020092

    .line 82
    goto :goto_1

    :cond_5
    const/16 v7, 0x3c

    if-lt v2, v7, :cond_6

    const/16 v7, 0x46

    if-ge v2, v7, :cond_6

    .line 83
    const v1, 0x7f020091

    .line 84
    goto :goto_1

    :cond_6
    const/16 v7, 0x32

    if-lt v2, v7, :cond_7

    const/16 v7, 0x3c

    if-ge v2, v7, :cond_7

    .line 85
    const v1, 0x7f020090

    .line 86
    goto :goto_1

    :cond_7
    if-lt v2, v12, :cond_8

    const/16 v7, 0x32

    if-ge v2, v7, :cond_8

    .line 87
    const v1, 0x7f02008f

    .line 88
    goto :goto_1

    :cond_8
    if-lt v2, v11, :cond_9

    if-ge v2, v12, :cond_9

    .line 89
    const v1, 0x7f02008e

    .line 90
    goto :goto_1

    :cond_9
    if-lt v2, v10, :cond_a

    if-ge v2, v11, :cond_a

    .line 91
    const v1, 0x7f02008d

    .line 92
    goto :goto_1

    :cond_a
    if-lt v2, v9, :cond_b

    if-ge v2, v10, :cond_b

    .line 93
    const v1, 0x7f02008b

    .line 94
    goto :goto_1

    :cond_b
    const/4 v7, 0x1

    if-lt v2, v7, :cond_c

    if-ge v2, v9, :cond_c

    .line 95
    const v1, 0x7f02008a

    .line 96
    goto :goto_1

    .line 97
    :cond_c
    const v1, 0x7f020089

    goto :goto_1

    .line 103
    .end local v1           #iconId:I
    :pswitch_2
    const/16 v7, 0x64

    if-ne v7, v2, :cond_d

    .line 104
    const v1, 0x7f0200ac

    .line 128
    .restart local v1       #iconId:I
    :goto_2
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;->this$0:Lcom/alibaba/adi/collie/ui/view/BatteryImageView;

    invoke-virtual {v7, v1}, Lcom/alibaba/adi/collie/ui/view/BatteryImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 105
    .end local v1           #iconId:I
    :cond_d
    const/16 v7, 0x5a

    if-lt v2, v7, :cond_e

    const/16 v7, 0x64

    if-ge v2, v7, :cond_e

    .line 106
    const v1, 0x7f0200b4

    .line 107
    .restart local v1       #iconId:I
    goto :goto_2

    .end local v1           #iconId:I
    :cond_e
    const/16 v7, 0x50

    if-lt v2, v7, :cond_f

    const/16 v7, 0x5a

    if-ge v2, v7, :cond_f

    .line 108
    const v1, 0x7f0200b3

    .line 109
    .restart local v1       #iconId:I
    goto :goto_2

    .end local v1           #iconId:I
    :cond_f
    const/16 v7, 0x46

    if-lt v2, v7, :cond_10

    const/16 v7, 0x50

    if-ge v2, v7, :cond_10

    .line 110
    const v1, 0x7f0200b2

    .line 111
    .restart local v1       #iconId:I
    goto :goto_2

    .end local v1           #iconId:I
    :cond_10
    const/16 v7, 0x3c

    if-lt v2, v7, :cond_11

    const/16 v7, 0x46

    if-ge v2, v7, :cond_11

    .line 112
    const v1, 0x7f0200b1

    .line 113
    .restart local v1       #iconId:I
    goto :goto_2

    .end local v1           #iconId:I
    :cond_11
    const/16 v7, 0x32

    if-lt v2, v7, :cond_12

    const/16 v7, 0x3c

    if-ge v2, v7, :cond_12

    .line 114
    const v1, 0x7f0200b0

    .line 115
    .restart local v1       #iconId:I
    goto :goto_2

    .end local v1           #iconId:I
    :cond_12
    if-lt v2, v12, :cond_13

    const/16 v7, 0x32

    if-ge v2, v7, :cond_13

    .line 116
    const v1, 0x7f0200af

    .line 117
    .restart local v1       #iconId:I
    goto :goto_2

    .end local v1           #iconId:I
    :cond_13
    if-lt v2, v11, :cond_14

    if-ge v2, v12, :cond_14

    .line 118
    const v1, 0x7f0200ae

    .line 119
    .restart local v1       #iconId:I
    goto :goto_2

    .end local v1           #iconId:I
    :cond_14
    if-lt v2, v10, :cond_15

    if-ge v2, v11, :cond_15

    .line 120
    const v1, 0x7f0200ad

    .line 121
    .restart local v1       #iconId:I
    goto :goto_2

    .end local v1           #iconId:I
    :cond_15
    if-lt v2, v9, :cond_16

    if-ge v2, v10, :cond_16

    .line 122
    const v1, 0x7f0200ab

    .line 123
    .restart local v1       #iconId:I
    goto :goto_2

    .end local v1           #iconId:I
    :cond_16
    const/4 v7, 0x1

    if-lt v2, v7, :cond_17

    if-ge v2, v9, :cond_17

    .line 124
    const v1, 0x7f0200aa

    .line 125
    .restart local v1       #iconId:I
    goto :goto_2

    .line 126
    .end local v1           #iconId:I
    :cond_17
    const v1, 0x7f0200a9

    .restart local v1       #iconId:I
    goto :goto_2

    .line 131
    .end local v1           #iconId:I
    :pswitch_3
    const v4, 0x7f020095

    .line 132
    .local v4, resid:I
    iget-object v7, p0, Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;->this$0:Lcom/alibaba/adi/collie/ui/view/BatteryImageView;

    invoke-virtual {v7, v4}, Lcom/alibaba/adi/collie/ui/view/BatteryImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 44
    invoke-direct {p0, p2}, Lcom/alibaba/adi/collie/ui/view/BatteryImageView$BatteryChangeReceiver;->onBatteryStateChange(Landroid/content/Intent;)V

    .line 45
    return-void
.end method

.method public register()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/adi/collie/CoreApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/CoreApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 54
    return-void
.end method
