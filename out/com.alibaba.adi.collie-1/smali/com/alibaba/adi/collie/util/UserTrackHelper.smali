.class public Lcom/alibaba/adi/collie/util/UserTrackHelper;
.super Ljava/lang/Object;
.source "UserTrackHelper.java"


# static fields
.field public static final EVENT_ID_ADILOCK:I = 0x13880

.field public static final UNLOCK_CANCEL:Ljava/lang/String; = "unlockCancel"

.field public static final UNLOCK_SUCESS:Ljava/lang/String; = "unlockSuccess"

.field public static enableDebugLog:Z

.field public static enableTag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/adi/collie/util/UserTrackHelper;->enableTag:Z

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/adi/collie/util/UserTrackHelper;->enableDebugLog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UTAdiCommitEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 68
    sget-boolean v0, Lcom/alibaba/adi/collie/util/UserTrackHelper;->enableTag:Z

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static UTAdiUnlockCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "from"
    .parameter "type"

    .prologue
    const v4, 0x13880

    .line 81
    sget-boolean v0, Lcom/alibaba/adi/collie/util/UserTrackHelper;->enableTag:Z

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v0, "unlockCancel"

    invoke-static {v4, v0, p0, p1}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    const-string v0, "xhh"

    const-string v1, "%s %s %s %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "unlockCancel"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static UTAdiUnlockSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "from"
    .parameter "type"

    .prologue
    const v4, 0x13880

    .line 74
    sget-boolean v0, Lcom/alibaba/adi/collie/util/UserTrackHelper;->enableTag:Z

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    const-string v0, "unlockSuccess"

    invoke-static {v4, v0, p0, p1}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    const-string v0, "xhh"

    const-string v1, "%s %s %s %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "unlockSuccess"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static UTCtrlClicked(Ljava/lang/String;)V
    .locals 1
    .parameter "controlName"

    .prologue
    .line 56
    sget-boolean v0, Lcom/alibaba/adi/collie/util/UserTrackHelper;->enableTag:Z

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    sget-object v0, Lcom/taobao/statistic/CT;->Button:Lcom/taobao/statistic/CT;

    invoke-static {v0, p0}, Lcom/taobao/statistic/TBS$Page;->ctrlClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static UTPageCreate(Ljava/lang/String;)V
    .locals 1
    .parameter "pageKey"

    .prologue
    .line 32
    sget-boolean v0, Lcom/alibaba/adi/collie/util/UserTrackHelper;->enableTag:Z

    if-nez v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-static {p0}, Lcom/taobao/statistic/TBS$Page;->create(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static UTPageEnter(Ljava/lang/String;)V
    .locals 1
    .parameter "pageKey"

    .prologue
    .line 38
    sget-boolean v0, Lcom/alibaba/adi/collie/util/UserTrackHelper;->enableTag:Z

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {p0}, Lcom/taobao/statistic/TBS$Page;->enter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static UTPageLeave(Ljava/lang/String;)V
    .locals 1
    .parameter "pageKey"

    .prologue
    .line 44
    sget-boolean v0, Lcom/alibaba/adi/collie/util/UserTrackHelper;->enableTag:Z

    if-nez v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-static {p0}, Lcom/taobao/statistic/TBS$Page;->leave(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static UTUninit()V
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/alibaba/adi/collie/util/UserTrackHelper;->enableTag:Z

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {}, Lcom/taobao/statistic/TBS;->uninit()V

    goto :goto_0
.end method

.method public static UTUpdateUserAccount(Ljava/lang/String;)V
    .locals 1
    .parameter "userNick"

    .prologue
    .line 62
    sget-boolean v0, Lcom/alibaba/adi/collie/util/UserTrackHelper;->enableTag:Z

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/taobao/statistic/TBS;->updateUserAccount(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSimpleActivityName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 4
    .parameter "activity"

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, activityName:Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 92
    .local v1, lastIndexOfDot:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 93
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 99
    .end local v0           #activityName:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static initUT(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 20
    sget-boolean v0, Lcom/alibaba/adi/collie/util/UserTrackHelper;->enableTag:Z

    if-nez v0, :cond_0

    .line 29
    :goto_0
    return-void

    .line 22
    :cond_0
    invoke-static {p0}, Lcom/taobao/statistic/TBS;->setEnvironment(Landroid/content/Context;)V

    .line 23
    sget-boolean v0, Lcom/alibaba/adi/collie/util/UserTrackHelper;->enableDebugLog:Z

    if-eqz v0, :cond_1

    .line 24
    invoke-static {}, Lcom/taobao/statistic/TBS;->turnDebug()V

    .line 26
    :cond_1
    const-string v0, "21579970"

    const-string v1, "ea09b68a69334390a4068421936e896f"

    invoke-static {v0, v1}, Lcom/taobao/statistic/TBS;->setKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/alibaba/adi/collie/model/AdiConstants;->VERSION_CHANNEL:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/statistic/TBS;->setChannel(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/taobao/statistic/TBS;->init()V

    goto :goto_0
.end method
