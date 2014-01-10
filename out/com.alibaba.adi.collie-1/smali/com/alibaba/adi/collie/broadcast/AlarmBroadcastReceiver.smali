.class public Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmBroadcastReceiver.java"


# static fields
.field public static final ALARM_INTENTS:[Ljava/lang/String;


# instance fields
.field private mIsActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/16 v0, 0x25

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 21
    const-string v2, "com.android.deskclock.ALARM_ALERT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 23
    const-string v2, "com.android.alarmclock.ALARM_ALERT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 27
    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 29
    const-string v2, "com.htc.android.worldclock.ALARM_ALERT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 30
    const-string v2, "com.htc.worldclock.ALARM_ALERT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 32
    const-string v2, "com.htc.android.ALARM_ALERT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 34
    const-string v2, "com.sonyericsson.alarm.ALARM_ALERT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 36
    const-string v2, "zte.com.cn.alarmclock.ALARM_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 38
    const-string v2, "com.motorola.blur.alarmclock.ALARM_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 40
    const-string v2, "com.android.alarmclock.alarmclock.ALARM_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 42
    const-string v2, "com.cn.google.AlertClock.ALARM_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 44
    const-string v2, "com.lenovomobile.deskclock.ALARM_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 46
    const-string v2, "android.intent.action.POWER_OFF_ALARM_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 50
    const-string v2, "com.mobitobi.android.gentlealarm.ALARM_INFO"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 52
    const-string v2, "com.urbandroid.sleep.alarmclock.ALARM_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 54
    const-string v2, "com.splunchy.android.alarmclock.ALARM_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 56
    const-string v2, "com.zdworks.android.zdclock.ACTION_ALARM_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 58
    const-string v2, "com.dianxinos.clock.ALARM_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 59
    const-string v2, "com.dianxinos.clock.SLEEP_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 60
    const-string v2, "com.dianxinos.clock.READY_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 62
    const-string v2, "com.sugeun.alarm.ALARM_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 63
    const-string v2, "com.sugeun.alarmclock.NEXT_ALARM_RECEIVE"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 65
    const-string v2, "com.urbandroid.sleep.alarmclock.ALARM_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 67
    const-string v2, "com.splunchy.android.alarmclock.ALARM_UPDATED"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 69
    const-string v2, "WOWODESKCLOCK_START"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 71
    const-string v2, "com.anglelabs.alarmclock.free.ALARM_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 72
    const-string v2, "com.anglelabs.alarmclock.ALARM_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 74
    const-string v2, "com.tencent.qqcalendar.ACTION_ALARM_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 75
    const-string v2, "com.tencent.qqcalendar.holiday.remind"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 77
    const-string v2, "com.splunchy.android.alarmclock.ALARM_UPDATED"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 79
    const-string v2, "com.lhs.speakclock.ALARM_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 81
    const-string v2, "com.clock.talent.clock.ClocksManager.CLOCK_ALERT_ACTION"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 83
    const-string v2, "com.apalon.myclockfree.ALARM_ALERT"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 84
    const-string v2, "com.apalon.myclockfree.ACTION_AUTO_SNOOZE_ALARM"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 86
    const-string v2, "com.nextdev.alarm.raingreceiver"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 87
    const-string v2, "com.nextdev.alarm.schedulenotice"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 89
    const-string v2, "com.xone.xoneclock.ALARM_ALERT"

    aput-object v2, v0, v1

    .line 18
    sput-object v0, Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;->ALARM_INTENTS:[Ljava/lang/String;

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;->mIsActive:Z

    .line 12
    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;->mIsActive:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;->mIsActive:Z

    .line 97
    return-void
.end method

.method public register(Landroid/app/Service;)V
    .locals 5
    .parameter "owner"

    .prologue
    .line 108
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v1, filter:Landroid/content/IntentFilter;
    sget-object v3, Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;->ALARM_INTENTS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 112
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 113
    invoke-virtual {p1, p0, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    return-void

    .line 109
    :cond_0
    aget-object v0, v3, v2

    .line 110
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;->mIsActive:Z

    .line 105
    return-void
.end method

.method public unregister(Landroid/app/Service;)V
    .locals 0
    .parameter "owner"

    .prologue
    .line 117
    invoke-virtual {p1, p0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    return-void
.end method
