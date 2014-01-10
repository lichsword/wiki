.class public final enum Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;
.super Ljava/lang/Enum;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Animate:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

.field public static final enum Correct:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

.field private static final synthetic ENUM$VALUES:[Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

.field public static final enum Wrong:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 199
    new-instance v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    const-string v1, "Correct"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    .line 202
    sput-object v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;->Correct:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    .line 204
    new-instance v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    const-string v1, "Animate"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    .line 207
    sput-object v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;->Animate:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    .line 209
    new-instance v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    const-string v1, "Wrong"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    .line 212
    sput-object v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;->Wrong:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    .line 197
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    sget-object v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;->Correct:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;->Animate:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;->Wrong:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;->ENUM$VALUES:[Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;->ENUM$VALUES:[Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$DisplayMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
