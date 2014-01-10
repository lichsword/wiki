.class public abstract Landroid/taobao/apirequest/BaseOutDo;
.super Ljava/lang/Object;
.source "BaseOutDo.java"

# interfaces
.implements Landroid/taobao/common/i/IMTOPDataObject;


# instance fields
.field private api:Ljava/lang/String;

.field private ret:[Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Landroid/taobao/apirequest/BaseOutDo;->api:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getData()Ljava/lang/Object;
.end method

.method public getRet()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Landroid/taobao/apirequest/BaseOutDo;->ret:[Ljava/lang/String;

    return-object v0
.end method

.method public getV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Landroid/taobao/apirequest/BaseOutDo;->v:Ljava/lang/String;

    return-object v0
.end method

.method public setApi(Ljava/lang/String;)V
    .locals 0
    .parameter "api"

    .prologue
    .line 19
    iput-object p1, p0, Landroid/taobao/apirequest/BaseOutDo;->api:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setRet([Ljava/lang/String;)V
    .locals 0
    .parameter "ret"

    .prologue
    .line 35
    iput-object p1, p0, Landroid/taobao/apirequest/BaseOutDo;->ret:[Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setV(Ljava/lang/String;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 27
    iput-object p1, p0, Landroid/taobao/apirequest/BaseOutDo;->v:Ljava/lang/String;

    .line 28
    return-void
.end method
