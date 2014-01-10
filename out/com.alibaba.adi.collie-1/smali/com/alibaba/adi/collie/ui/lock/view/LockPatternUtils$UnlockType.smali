.class public final enum Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;
.super Ljava/lang/Enum;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnlockType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

.field public static final enum NUMBER:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

.field public static final enum PATTERN:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

.field public static final enum SLIDE:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    const-string v1, "SLIDE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->SLIDE:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    new-instance v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    const-string v1, "NUMBER"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->NUMBER:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    new-instance v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    const-string v1, "PATTERN"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->PATTERN:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    sget-object v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->SLIDE:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->NUMBER:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->PATTERN:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->ENUM$VALUES:[Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->ENUM$VALUES:[Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
