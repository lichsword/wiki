.class final enum Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;
.super Ljava/lang/Enum;
.source "JokeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ImageLoadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

.field public static final enum FAILED:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

.field public static final enum LOADED:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

.field public static final enum LOADING:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 242
    new-instance v0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;->LOADING:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    new-instance v0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;->LOADED:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    new-instance v0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;->FAILED:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    .line 241
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    sget-object v1, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;->LOADING:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;->LOADED:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;->FAILED:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;->ENUM$VALUES:[Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 241
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;->ENUM$VALUES:[Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
