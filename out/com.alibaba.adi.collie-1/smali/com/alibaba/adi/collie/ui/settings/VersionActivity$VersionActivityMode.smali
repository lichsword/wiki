.class final enum Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;
.super Ljava/lang/Enum;
.source "VersionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/settings/VersionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VersionActivityMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOWNLOADING:Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;

.field private static final synthetic ENUM$VALUES:[Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;

.field public static final enum NO_DOWNLOADING:Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 207
    new-instance v0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;

    const-string v1, "NO_DOWNLOADING"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;->NO_DOWNLOADING:Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;

    new-instance v0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;->DOWNLOADING:Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;

    .line 206
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;

    sget-object v1, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;->NO_DOWNLOADING:Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;->DOWNLOADING:Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;->ENUM$VALUES:[Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;->ENUM$VALUES:[Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
