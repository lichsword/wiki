.class public final enum Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;
.super Ljava/lang/Enum;
.source "WallpaperManagerX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WallpaperSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

.field public static final enum FILE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

.field public static final enum PACKAGE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 637
    new-instance v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    const-string v1, "PACKAGE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->PACKAGE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    new-instance v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    const-string v1, "FILE"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->FILE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    .line 636
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    sget-object v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->PACKAGE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->FILE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->ENUM$VALUES:[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 636
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->ENUM$VALUES:[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    array-length v1, v0

    new-array v2, v1, [Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
