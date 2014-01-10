.class public Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;
    }
.end annotation


# static fields
.field public static final RESULT_MATCH:I = 0x1

.field public static final RESULT_NOT_EXIT:I = -0x1

.field public static final RESULT_NOT_MATCH:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getUnlockType()Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;
    .locals 3

    .prologue
    .line 23
    const-string v1, "lock_type"

    sget-object v2, Lcom/alibaba/adi/collie/model/AdiConstants;->LOCK_NONE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, type:Ljava/lang/String;
    sget-object v1, Lcom/alibaba/adi/collie/model/AdiConstants;->LOCK_PIC:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    sget-object v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->PATTERN:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    .line 29
    :goto_0
    return-object v1

    .line 26
    :cond_0
    sget-object v1, Lcom/alibaba/adi/collie/model/AdiConstants;->LOCK_NUM:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    sget-object v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->NUMBER:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    goto :goto_0

    .line 29
    :cond_1
    sget-object v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->SLIDE:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    goto :goto_0
.end method

.method public static isSlideUnlockMode()Z
    .locals 4

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, result:Z
    const-string v2, "lock_type"

    sget-object v3, Lcom/alibaba/adi/collie/model/AdiConstants;->LOCK_NONE:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, type:Ljava/lang/String;
    sget-object v2, Lcom/alibaba/adi/collie/model/AdiConstants;->LOCK_NONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 42
    return v0
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;>;"
    if-nez p0, :cond_1

    .line 74
    const-string v3, ""

    .line 83
    :cond_0
    return-object v3

    .line 76
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 78
    .local v2, patternSize:I
    const-string v3, ""

    .line 79
    .local v3, ret:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 80
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;

    .line 81
    .local v0, cell:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->getRow()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->getColumn()I

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "string"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;>;"
    if-eqz p0, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    :cond_0
    return-object v3

    .line 57
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 58
    .local v1, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 59
    aget-byte v4, v1, v2

    add-int/lit8 v0, v4, -0x30

    .line 60
    .local v0, b:I
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;->of(II)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkNum(Ljava/lang/String;)I
    .locals 2
    .parameter "lockNum"

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->getLockNumString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, stored:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 121
    :goto_0
    return v1

    .line 119
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 121
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public checkPattern(Ljava/util/List;)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;>;"
    const/4 v0, -0x1

    .line 104
    .local v0, result:I
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->getLockPaternString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, stored:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    invoke-static {p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 108
    :goto_0
    return v2

    .line 106
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v0

    .line 108
    goto :goto_0
.end method

.method public checkPattern(Ljava/util/List;Ljava/util/List;)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, fPattern:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;>;"
    .local p2, sPattern:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;>;"
    invoke-static {p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearLock()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 126
    return-void
.end method

.method public clearNumLock()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->saveLockNum(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public getLockNumString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    const-string v0, "lock_num_pwd"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockPaternString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    const-string v0, "lock_pwd"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveLockNum(Ljava/lang/String;)V
    .locals 1
    .parameter "lockNum"

    .prologue
    .line 91
    const-string v0, "lock_num_pwd"

    invoke-static {v0, p1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;>;"
    const-string v0, "lock_pwd"

    invoke-static {p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method
