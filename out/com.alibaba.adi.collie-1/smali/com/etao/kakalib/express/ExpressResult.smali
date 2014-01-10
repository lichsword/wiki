.class public Lcom/etao/kakalib/express/ExpressResult;
.super Ljava/lang/Object;
.source "ExpressResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/etao/kakalib/express/ExpressResult$ExpressSection;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/etao/kakalib/express/ExpressResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public companyName:Ljava/lang/String;

.field public mExpressCode:Ljava/lang/String;

.field public order:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public stepInfo:[Lcom/etao/kakalib/express/ExpressResult$ExpressSection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/etao/kakalib/express/ExpressResult$1;

    invoke-direct {v0}, Lcom/etao/kakalib/express/ExpressResult$1;-><init>()V

    sput-object v0, Lcom/etao/kakalib/express/ExpressResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etao/kakalib/express/ExpressResult$ExpressSection;

    iput-object v0, p0, Lcom/etao/kakalib/express/ExpressResult;->stepInfo:[Lcom/etao/kakalib/express/ExpressResult$ExpressSection;

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/etao/kakalib/express/ExpressResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/etao/kakalib/express/ExpressResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getOrderId()J
    .locals 5

    .prologue
    .line 150
    iget-object v3, p0, Lcom/etao/kakalib/express/ExpressResult;->order:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/etao/kakalib/express/ExpressResult;->order:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 151
    .local v2, orderId:Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 152
    .local v0, id:J
    return-wide v0

    .line 150
    .end local v0           #id:J
    .end local v2           #orderId:Ljava/lang/String;
    :cond_0
    const-string v2, "0"

    goto :goto_0
.end method

.method public getOrderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/etao/kakalib/express/ExpressResult;->order:Ljava/util/List;

    return-object v0
.end method

.method public isTaobaoExpress()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/etao/kakalib/express/ExpressResult;->order:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etao/kakalib/express/ExpressResult;->order:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/etao/kakalib/express/ExpressResult;->stepInfo:[Lcom/etao/kakalib/express/ExpressResult$ExpressSection;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 67
    return-void
.end method
