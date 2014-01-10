.class public Lcom/alibaba/adi/collie/share/control/ShareDialog;
.super Ljava/lang/Object;
.source "ShareDialog.java"


# static fields
.field private static final LAIWANG_APPID:Ljava/lang/String; = "laiwangb23e3608b"

.field private static final LAIWANG_SECRETID:Ljava/lang/String; = "b23e3608b8eb4c35a2d02996bc69499c "

.field public static final SHARE_TO_COPY:I = 0xa

.field public static final SHARE_TO_FRIENDS:I = 0x8

.field public static final SHARE_TO_LAIWANG_CHAT:I = 0x5

.field public static final SHARE_TO_LAIWANG_SHARE:I = 0x6

.field public static final SHARE_TO_QQ:I = 0x3

.field public static final SHARE_TO_QQWEIBO:I = 0x2

.field public static final SHARE_TO_QZONE:I = 0x1

.field public static final SHARE_TO_SINA:I = 0x0

.field public static final SHARE_TO_SMS:I = 0x9

.field public static final SHARE_TO_WANGXING:I = 0x7

.field public static final SHARE_TO_WEIXIN:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final ctx:Landroid/app/Activity;

.field private dlg:Landroid/app/Dialog;

.field private groupAdapter:Lcom/alibaba/adi/collie/share/control/ShareListAdapter;

.field private groupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/adi/collie/share/control/Share;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppProvider:Lcom/alibaba/adi/collie/share/control/ShareAppProvider;

.field private mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;

.field private final mHandler:Landroid/taobao/util/SafeHandler;

.field private mLinearLayout:Landroid/widget/RelativeLayout;

.field private mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;

.field private shareListView:Landroid/widget/GridView;

.field private final shareQQ:Lcom/alibaba/adi/collie/share/sdk/ShareQQController;

.field private share_cancel:Landroid/widget/Button;

.field private share_cut_event:Landroid/widget/ImageView;

.field private final weixinController:Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/alibaba/adi/collie/share/control/ShareDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->TAG:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->ctx:Landroid/app/Activity;

    .line 79
    new-instance v0, Lcom/alibaba/adi/collie/share/sdk/ShareQQController;

    iget-object v1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->ctx:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/adi/collie/share/sdk/ShareQQController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->shareQQ:Lcom/alibaba/adi/collie/share/sdk/ShareQQController;

    .line 80
    new-instance v0, Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;

    invoke-direct {v0, p1}, Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->weixinController:Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;

    .line 81
    new-instance v0, Lcom/alibaba/adi/collie/share/control/ShareAppProvider;

    iget-object v1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->weixinController:Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;

    invoke-direct {v0, p1, v1}, Lcom/alibaba/adi/collie/share/control/ShareAppProvider;-><init>(Landroid/app/Activity;Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mAppProvider:Lcom/alibaba/adi/collie/share/control/ShareAppProvider;

    .line 82
    new-instance v0, Landroid/taobao/util/SafeHandler;

    invoke-direct {v0}, Landroid/taobao/util/SafeHandler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mHandler:Landroid/taobao/util/SafeHandler;

    .line 85
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->groupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/share/control/ShareDialog;Lcom/alibaba/adi/collie/share/control/Share;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;

    return-void
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->ctx:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/share/control/ShareDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->openShareActivity()V

    return-void
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/ShareData;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/share/control/ShareDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/alibaba/adi/collie/share/control/ShareDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->gotoShare()V

    return-void
.end method

.method static synthetic access$7(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/control/Share;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;

    return-object v0
.end method

.method static synthetic access$8(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->weixinController:Lcom/alibaba/adi/collie/share/sdk/ShareWeixinController;

    return-object v0
.end method

.method static synthetic access$9(Lcom/alibaba/adi/collie/share/control/ShareDialog;)Lcom/alibaba/adi/collie/share/sdk/ShareQQController;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->shareQQ:Lcom/alibaba/adi/collie/share/sdk/ShareQQController;

    return-object v0
.end method

.method private copy()V
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lcom/alibaba/adi/collie/share/control/ShareDialog$4;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/share/control/ShareDialog$4;-><init>(Lcom/alibaba/adi/collie/share/control/ShareDialog;)V

    .line 243
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/share/control/ShareDialog$4;->start()V

    .line 244
    return-void
.end method

.method private getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "name"

    .prologue
    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/alibaba/adi/collie/model/AdiConstants;->ROOT_DIR_EXT_ADI_LOCK:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "tmp_images"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, savePath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 250
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 252
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, saveFilePath:Ljava/lang/String;
    return-object v1
.end method

.method private gotoShare()V
    .locals 4

    .prologue
    .line 257
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;

    iget-object v1, v1, Lcom/alibaba/adi/collie/share/control/ShareData;->mLink:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->startShare()V

    .line 295
    :goto_0
    return-void

    .line 261
    :cond_0
    const-string v0, "?"

    .line 262
    .local v0, mark:Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;

    iget-object v1, v1, Lcom/alibaba/adi/collie/share/control/ShareData;->mLink:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    const-string v0, "&"

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/share/control/Share;->getId()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 266
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;

    iget-object v2, v1, Lcom/alibaba/adi/collie/share/control/ShareData;->mLink:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "channel=weixin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/adi/collie/share/control/ShareData;->mLink:Ljava/lang/String;

    .line 292
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->startShare()V

    goto :goto_0

    .line 267
    :cond_2
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/share/control/Share;->getId()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 268
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;

    iget-object v2, v1, Lcom/alibaba/adi/collie/share/control/ShareData;->mLink:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "channel=pengyou"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/adi/collie/share/control/ShareData;->mLink:Ljava/lang/String;

    goto :goto_1

    .line 269
    :cond_3
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/share/control/Share;->getId()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 270
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;

    iget-object v2, v1, Lcom/alibaba/adi/collie/share/control/ShareData;->mLink:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "channel=QQ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/adi/collie/share/control/ShareData;->mLink:Ljava/lang/String;

    goto :goto_1

    .line 271
    :cond_4
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/share/control/Share;->getId()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_5

    .line 272
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;

    iget-object v2, v1, Lcom/alibaba/adi/collie/share/control/ShareData;->mLink:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "channel=SMS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/adi/collie/share/control/ShareData;->mLink:Ljava/lang/String;

    goto :goto_1

    .line 273
    :cond_5
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/share/control/Share;->getId()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    .line 274
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;

    iget-object v2, v1, Lcom/alibaba/adi/collie/share/control/ShareData;->mLink:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "channel=COPY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/adi/collie/share/control/ShareData;->mLink:Ljava/lang/String;

    goto/16 :goto_1

    .line 276
    :cond_6
    iget-object v1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;

    iget-object v2, v1, Lcom/alibaba/adi/collie/share/control/ShareData;->mLink:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "channel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;

    iget-object v3, v3, Lcom/alibaba/adi/collie/share/control/Share;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/adi/collie/share/control/ShareData;->mLink:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private installCheck()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mCurrentInfo:Lcom/alibaba/adi/collie/share/control/Share;

    iget-object v0, v0, Lcom/alibaba/adi/collie/share/control/Share;->appId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openShareActivity()V
    .locals 3

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->installCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-string v1, "\u7a0b\u5e8f\u672a\u5b89\u88c5"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 207
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->copy()V

    goto :goto_0
.end method

.method private shareClick()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->share_cancel:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/adi/collie/share/control/ShareDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/share/control/ShareDialog$1;-><init>(Lcom/alibaba/adi/collie/share/control/ShareDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->share_cut_event:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/adi/collie/share/control/ShareDialog$2;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/share/control/ShareDialog$2;-><init>(Lcom/alibaba/adi/collie/share/control/ShareDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->shareListView:Landroid/widget/GridView;

    new-instance v1, Lcom/alibaba/adi/collie/share/control/ShareDialog$3;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/share/control/ShareDialog$3;-><init>(Lcom/alibaba/adi/collie/share/control/ShareDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 199
    return-void
.end method

.method private startShare()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mHandler:Landroid/taobao/util/SafeHandler;

    new-instance v1, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/share/control/ShareDialog$5;-><init>(Lcom/alibaba/adi/collie/share/control/ShareDialog;)V

    invoke-virtual {v0, v1}, Landroid/taobao/util/SafeHandler;->post(Ljava/lang/Runnable;)Z

    .line 411
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->dlg:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->dlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 142
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->dlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 143
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->dlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->dlg:Landroid/app/Dialog;

    .line 153
    :cond_0
    return-void
.end method

.method public setShareData(Lcom/alibaba/adi/collie/share/control/ShareData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mShareData:Lcom/alibaba/adi/collie/share/control/ShareData;

    .line 91
    return-void
.end method

.method public showShareList()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 100
    iget-object v4, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->ctx:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v4, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mAppProvider:Lcom/alibaba/adi/collie/share/control/ShareAppProvider;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/share/control/ShareAppProvider;->getShareApp()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->groupList:Ljava/util/ArrayList;

    .line 106
    iget-object v4, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->dlg:Landroid/app/Dialog;

    if-nez v4, :cond_2

    .line 107
    new-instance v4, Landroid/app/Dialog;

    iget-object v5, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->ctx:Landroid/app/Activity;

    const v6, 0x7f0d007e

    invoke-direct {v4, v5, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->dlg:Landroid/app/Dialog;

    .line 110
    :cond_2
    iget-object v4, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->ctx:Landroid/app/Activity;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 111
    .local v1, inflate:Landroid/view/LayoutInflater;
    const v4, 0x7f03009f

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mLinearLayout:Landroid/widget/RelativeLayout;

    .line 112
    iget-object v4, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mLinearLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setMinimumWidth(I)V

    .line 113
    iget-object v4, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->dlg:Landroid/app/Dialog;

    iget-object v5, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mLinearLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 115
    iget-object v4, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mLinearLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f080206

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->share_cut_event:Landroid/widget/ImageView;

    .line 116
    iget-object v4, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mLinearLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f080209

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->share_cancel:Landroid/widget/Button;

    .line 117
    iget-object v4, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->mLinearLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f080208

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    iput-object v4, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->shareListView:Landroid/widget/GridView;

    .line 118
    new-instance v4, Lcom/alibaba/adi/collie/share/control/ShareListAdapter;

    iget-object v5, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->ctx:Landroid/app/Activity;

    iget-object v6, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->shareListView:Landroid/widget/GridView;

    invoke-direct {v4, v5, v6}, Lcom/alibaba/adi/collie/share/control/ShareListAdapter;-><init>(Landroid/content/Context;Landroid/widget/GridView;)V

    iput-object v4, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->groupAdapter:Lcom/alibaba/adi/collie/share/control/ShareListAdapter;

    .line 119
    iget-object v4, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->groupAdapter:Lcom/alibaba/adi/collie/share/control/ShareListAdapter;

    iget-object v5, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/alibaba/adi/collie/share/control/ShareListAdapter;->setAppList(Ljava/util/ArrayList;)V

    .line 120
    iget-object v4, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->shareListView:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->groupAdapter:Lcom/alibaba/adi/collie/share/control/ShareListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    invoke-direct {p0}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->shareClick()V

    .line 123
    iget-object v4, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->dlg:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 124
    .local v3, w:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 125
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x0

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 126
    const/16 v0, -0x3e8

    .line 127
    .local v0, cMakeBottom:I
    const/16 v4, -0x3e8

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 128
    const/4 v4, -0x1

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 129
    const/4 v4, -0x2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 130
    const/16 v4, 0x50

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 131
    iget-object v4, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->dlg:Landroid/app/Dialog;

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 132
    iget-object v4, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->dlg:Landroid/app/Dialog;

    invoke-virtual {v4, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 133
    iget-object v4, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->dlg:Landroid/app/Dialog;

    invoke-virtual {v4, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 134
    iget-object v4, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->ctx:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 135
    iget-object v4, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog;->dlg:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method
