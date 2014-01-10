.class Lcom/laiwang/openapi/message/LWMessage$1;
.super Ljava/lang/Object;
.source "LWMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/openapi/message/LWMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/laiwang/openapi/message/LWMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/laiwang/openapi/message/LWMessage;
    .locals 2
    .parameter "in"

    .prologue
    .line 45
    new-instance v0, Lcom/laiwang/openapi/message/LWMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/laiwang/openapi/message/LWMessage;-><init>(Landroid/os/Parcel;Lcom/laiwang/openapi/message/LWMessage;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/laiwang/openapi/message/LWMessage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/laiwang/openapi/message/LWMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/laiwang/openapi/message/LWMessage;
    .locals 1
    .parameter "size"

    .prologue
    .line 49
    new-array v0, p1, [Lcom/laiwang/openapi/message/LWMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/laiwang/openapi/message/LWMessage$1;->newArray(I)[Lcom/laiwang/openapi/message/LWMessage;

    move-result-object v0

    return-object v0
.end method
