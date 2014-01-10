.class public Lcom/alibaba/adi/collie/share/control/Share;
.super Ljava/lang/Object;
.source "Share.java"


# instance fields
.field public activityName:Ljava/lang/String;

.field public appId:Ljava/lang/String;

.field private id:I

.field public isExist:Z

.field private logo:I

.field public packageName:Ljava/lang/String;

.field private shareName:Ljava/lang/String;

.field public uninstallTip:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "logo"
    .parameter "name"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/alibaba/adi/collie/share/control/Share;->id:I

    .line 15
    iput p2, p0, Lcom/alibaba/adi/collie/share/control/Share;->logo:I

    .line 16
    iput-object p3, p0, Lcom/alibaba/adi/collie/share/control/Share;->shareName:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/alibaba/adi/collie/share/control/Share;->id:I

    return v0
.end method

.method public getLogo()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/alibaba/adi/collie/share/control/Share;->logo:I

    return v0
.end method

.method public getShareName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/control/Share;->shareName:Ljava/lang/String;

    return-object v0
.end method

.method public setAPKUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "url"
    .parameter "tip"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/control/Share;->appId:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/alibaba/adi/collie/share/control/Share;->uninstallTip:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 55
    iput p1, p0, Lcom/alibaba/adi/collie/share/control/Share;->id:I

    .line 56
    return-void
.end method

.method public setLogo(I)V
    .locals 0
    .parameter "logo"

    .prologue
    .line 39
    iput p1, p0, Lcom/alibaba/adi/collie/share/control/Share;->logo:I

    .line 40
    return-void
.end method

.method public setPackageInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"
    .parameter "activityName"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/control/Share;->packageName:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/alibaba/adi/collie/share/control/Share;->activityName:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setShareName(Ljava/lang/String;)V
    .locals 0
    .parameter "shareName"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/control/Share;->shareName:Ljava/lang/String;

    .line 48
    return-void
.end method
