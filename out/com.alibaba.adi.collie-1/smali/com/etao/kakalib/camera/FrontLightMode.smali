.class public final enum Lcom/etao/kakalib/camera/FrontLightMode;
.super Ljava/lang/Enum;
.source "FrontLightMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etao/kakalib/camera/FrontLightMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTO:Lcom/etao/kakalib/camera/FrontLightMode;

.field private static final synthetic ENUM$VALUES:[Lcom/etao/kakalib/camera/FrontLightMode;

.field public static final enum OFF:Lcom/etao/kakalib/camera/FrontLightMode;

.field public static final enum ON:Lcom/etao/kakalib/camera/FrontLightMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/etao/kakalib/camera/FrontLightMode;

    const-string v1, "ON"

    invoke-direct {v0, v1, v2}, Lcom/etao/kakalib/camera/FrontLightMode;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v0, Lcom/etao/kakalib/camera/FrontLightMode;->ON:Lcom/etao/kakalib/camera/FrontLightMode;

    .line 30
    new-instance v0, Lcom/etao/kakalib/camera/FrontLightMode;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v3}, Lcom/etao/kakalib/camera/FrontLightMode;-><init>(Ljava/lang/String;I)V

    .line 31
    sput-object v0, Lcom/etao/kakalib/camera/FrontLightMode;->AUTO:Lcom/etao/kakalib/camera/FrontLightMode;

    .line 32
    new-instance v0, Lcom/etao/kakalib/camera/FrontLightMode;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v4}, Lcom/etao/kakalib/camera/FrontLightMode;-><init>(Ljava/lang/String;I)V

    .line 33
    sput-object v0, Lcom/etao/kakalib/camera/FrontLightMode;->OFF:Lcom/etao/kakalib/camera/FrontLightMode;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/etao/kakalib/camera/FrontLightMode;

    sget-object v1, Lcom/etao/kakalib/camera/FrontLightMode;->ON:Lcom/etao/kakalib/camera/FrontLightMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etao/kakalib/camera/FrontLightMode;->AUTO:Lcom/etao/kakalib/camera/FrontLightMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etao/kakalib/camera/FrontLightMode;->OFF:Lcom/etao/kakalib/camera/FrontLightMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/etao/kakalib/camera/FrontLightMode;->ENUM$VALUES:[Lcom/etao/kakalib/camera/FrontLightMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static parse(Ljava/lang/String;)Lcom/etao/kakalib/camera/FrontLightMode;
    .locals 1
    .parameter "modeString"

    .prologue
    .line 36
    if-nez p0, :cond_0

    sget-object v0, Lcom/etao/kakalib/camera/FrontLightMode;->OFF:Lcom/etao/kakalib/camera/FrontLightMode;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/etao/kakalib/camera/FrontLightMode;->valueOf(Ljava/lang/String;)Lcom/etao/kakalib/camera/FrontLightMode;

    move-result-object v0

    goto :goto_0
.end method

.method public static readPref(Landroid/content/SharedPreferences;)Lcom/etao/kakalib/camera/FrontLightMode;
    .locals 2
    .parameter "sharedPrefs"

    .prologue
    .line 40
    const-string v0, "preferences_front_light_mode"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/etao/kakalib/camera/FrontLightMode;->parse(Ljava/lang/String;)Lcom/etao/kakalib/camera/FrontLightMode;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etao/kakalib/camera/FrontLightMode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/etao/kakalib/camera/FrontLightMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etao/kakalib/camera/FrontLightMode;

    return-object v0
.end method

.method public static values()[Lcom/etao/kakalib/camera/FrontLightMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/etao/kakalib/camera/FrontLightMode;->ENUM$VALUES:[Lcom/etao/kakalib/camera/FrontLightMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/etao/kakalib/camera/FrontLightMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
