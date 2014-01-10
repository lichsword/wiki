.class public Lcom/alibaba/adi/collie/model/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"


# instance fields
.field public hasUpdate:Z

.field public mApkDLUrl:Ljava/lang/String;

.field public mApkSize:J

.field public mErrCode:I

.field public mNewApkMD5:Ljava/lang/String;

.field public mNotifyTip:Ljava/lang/String;

.field public mPatchDLUrl:Ljava/lang/String;

.field public mPatchSize:J

.field public mPriority:I

.field public mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/model/UpdateInfo;->mErrCode:I

    .line 12
    iput-object v1, p0, Lcom/alibaba/adi/collie/model/UpdateInfo;->mApkDLUrl:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/alibaba/adi/collie/model/UpdateInfo;->mPatchDLUrl:Ljava/lang/String;

    .line 20
    iput-wide v2, p0, Lcom/alibaba/adi/collie/model/UpdateInfo;->mApkSize:J

    .line 24
    iput-wide v2, p0, Lcom/alibaba/adi/collie/model/UpdateInfo;->mPatchSize:J

    .line 28
    iput-object v1, p0, Lcom/alibaba/adi/collie/model/UpdateInfo;->mVersion:Ljava/lang/String;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/adi/collie/model/UpdateInfo;->mPriority:I

    .line 36
    iput-object v1, p0, Lcom/alibaba/adi/collie/model/UpdateInfo;->mNotifyTip:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/alibaba/adi/collie/model/UpdateInfo;->mNewApkMD5:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method public shouldUpdate()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/model/UpdateInfo;->hasUpdate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/model/UpdateInfo;->mApkDLUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/model/UpdateInfo;->mApkDLUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
