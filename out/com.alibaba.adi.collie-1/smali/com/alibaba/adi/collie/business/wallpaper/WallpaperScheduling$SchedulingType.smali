.class public final enum Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;
.super Ljava/lang/Enum;
.source "WallpaperScheduling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SchedulingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

.field public static final enum EVERY_SCREEN_ON:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

.field public static final enum NEVER_SCHEDULE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

.field public static final enum NORMAL_SCHEDULE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    const-string v1, "NEVER_SCHEDULE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;->NEVER_SCHEDULE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    .line 71
    new-instance v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    const-string v1, "EVERY_SCREEN_ON"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;->EVERY_SCREEN_ON:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    .line 72
    new-instance v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    const-string v1, "NORMAL_SCHEDULE"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;->NORMAL_SCHEDULE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    sget-object v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;->NEVER_SCHEDULE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;->EVERY_SCREEN_ON:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;->NORMAL_SCHEDULE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;->ENUM$VALUES:[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;->ENUM$VALUES:[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
