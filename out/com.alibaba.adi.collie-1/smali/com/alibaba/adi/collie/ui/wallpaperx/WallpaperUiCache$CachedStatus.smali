.class public final enum Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;
.super Ljava/lang/Enum;
.source "WallpaperUiCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CachedStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEL:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

.field private static final synthetic ENUM$VALUES:[Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

.field public static final enum NOT_USE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

.field public static final enum NO_CHANGE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

.field public static final enum USE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 226
    new-instance v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    const-string v1, "NO_CHANGE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->NO_CHANGE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    new-instance v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    const-string v1, "USE"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->USE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    new-instance v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    const-string v1, "NOT_USE"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->NOT_USE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    new-instance v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    const-string v1, "DEL"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->DEL:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    .line 225
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    sget-object v1, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->NO_CHANGE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->USE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->NOT_USE:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->DEL:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->ENUM$VALUES:[Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;->ENUM$VALUES:[Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiCache$CachedStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
