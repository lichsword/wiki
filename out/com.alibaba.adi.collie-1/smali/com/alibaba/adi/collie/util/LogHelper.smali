.class public Lcom/alibaba/adi/collie/util/LogHelper;
.super Ljava/lang/Object;
.source "LogHelper.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field public static enableTag:Z

.field public static isNeedLog:Z

.field private static tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    const-class v0, Lcom/alibaba/adi/collie/util/LogHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->TAG:Ljava/lang/String;

    .line 70
    sput-boolean v1, Lcom/alibaba/adi/collie/util/LogHelper;->isNeedLog:Z

    .line 71
    sput-boolean v1, Lcom/alibaba/adi/collie/util/LogHelper;->enableTag:Z

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    .line 76
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    const-string v1, "AdiServer.AdiRegisterConnectHelper"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/TaobaoIntentService;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/AgooRegister;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/business/push/PushManager;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/view/PushBaseView;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lorg/lichsword/util/ImageManager;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/aslide/home/BaseHomeFragment;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/aslide/content/ContentSlideLayout;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/aslide/home/HomeSlideLayout;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    const-string v1, "LocationUtil"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    const-string v1, "VersionActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    const-string v1, "DownloadManagerHelper"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    const-string v1, "WallpaperManagerX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    const-string v1, "PROFILE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/util/LogHelper;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/home/HomeActivity;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/MainActivity;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/util/NotificationHelper;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    const-string v1, "SyncTask"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    const-string v1, "ServiceDataParser"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/broadcast/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/news/NewsActivity;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/home/ShakeSensor;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/joke/JokeActivity;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginCheckCodeConnectorHelper;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    const-string v1, "NetworkStatusReceiver"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    const-string v1, "AdiScheduledNetworkService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    const-string v1, "STARTTIME"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/view/PullDownListView;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/service/task/AppGetTask;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    const-string v1, "FeedbackConnectorHelper"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    const-string v1, "FlashLight"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/gadgets/FlashlightWidget;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    const-string v1, "ChartView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/model/LockStateKeeper;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/util/LauncherSettingsHelper;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/settings/DisableHomeActivity;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/LockLauncherActivity;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/aslide/home/ToolBoxLayout;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    const-string v1, "xhh"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    const-string v1, "msg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/ui/view/WallpaperView;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/util/ImageUtil;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    const-string v1, "PushTable"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/business/push/PushConnectHelper;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/broadcast/PhoneSateReceiver;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    sget-object v1, Lcom/alibaba/adi/collie/util/UninstallObserver;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 154
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 186
    sget-boolean v0, Lcom/alibaba/adi/collie/util/LogHelper;->enableTag:Z

    if-eqz v0, :cond_1

    .line 187
    sget-boolean v0, Lcom/alibaba/adi/collie/util/LogHelper;->isNeedLog:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    sget-boolean v0, Lcom/alibaba/adi/collie/util/LogHelper;->isNeedLog:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 150
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 174
    sget-boolean v0, Lcom/alibaba/adi/collie/util/LogHelper;->enableTag:Z

    if-eqz v0, :cond_1

    .line 175
    sget-boolean v0, Lcom/alibaba/adi/collie/util/LogHelper;->isNeedLog:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    sget-boolean v0, Lcom/alibaba/adi/collie/util/LogHelper;->isNeedLog:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 146
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 162
    sget-boolean v0, Lcom/alibaba/adi/collie/util/LogHelper;->enableTag:Z

    if-eqz v0, :cond_1

    .line 163
    sget-boolean v0, Lcom/alibaba/adi/collie/util/LogHelper;->isNeedLog:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    sget-boolean v0, Lcom/alibaba/adi/collie/util/LogHelper;->isNeedLog:Z

    if-eqz v0, :cond_0

    .line 168
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 210
    sget-boolean v0, Lcom/alibaba/adi/collie/util/LogHelper;->enableTag:Z

    if-eqz v0, :cond_1

    .line 212
    sget-boolean v0, Lcom/alibaba/adi/collie/util/LogHelper;->isNeedLog:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    sget-boolean v0, Lcom/alibaba/adi/collie/util/LogHelper;->isNeedLog:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 158
    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 198
    sget-boolean v0, Lcom/alibaba/adi/collie/util/LogHelper;->enableTag:Z

    if-eqz v0, :cond_1

    .line 199
    sget-boolean v0, Lcom/alibaba/adi/collie/util/LogHelper;->isNeedLog:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/adi/collie/util/LogHelper;->tags:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    sget-boolean v0, Lcom/alibaba/adi/collie/util/LogHelper;->isNeedLog:Z

    if-eqz v0, :cond_0

    .line 204
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
