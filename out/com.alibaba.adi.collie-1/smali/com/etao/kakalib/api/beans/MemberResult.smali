.class public Lcom/etao/kakalib/api/beans/MemberResult;
.super Lcom/etao/kakalib/api/beans/BaseResult;
.source "MemberResult.java"


# static fields
.field private static final serialVersionUID:J = 0x20a021e7e55bf9cdL


# instance fields
.field private account:Ljava/lang/String;

.field private cardName:Ljava/lang/String;

.field private cardNo:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private experience:Ljava/lang/String;

.field private inviteCount:Ljava/lang/String;

.field private privilegeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etao/kakalib/api/beans/PrivilegeDO;",
            ">;"
        }
    .end annotation
.end field

.field private rank:Ljava/lang/String;

.field private score:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/MemberResult;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getCardName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/MemberResult;->cardName:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/MemberResult;->cardNo:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/MemberResult;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExperience()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/MemberResult;->experience:Ljava/lang/String;

    return-object v0
.end method

.method public getInviteCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/MemberResult;->inviteCount:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivilegeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etao/kakalib/api/beans/PrivilegeDO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/MemberResult;->privilegeList:Ljava/util/List;

    return-object v0
.end method

.method public getRank()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/MemberResult;->rank:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/MemberResult;->score:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/MemberResult;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/MemberResult;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/MemberResult;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/MemberResult;->account:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setCardName(Ljava/lang/String;)V
    .locals 0
    .parameter "cardName"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/MemberResult;->cardName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setCardNo(Ljava/lang/String;)V
    .locals 0
    .parameter "cardNo"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/MemberResult;->cardNo:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/MemberResult;->description:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setExperience(Ljava/lang/String;)V
    .locals 0
    .parameter "experience"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/MemberResult;->experience:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setInviteCount(Ljava/lang/String;)V
    .locals 0
    .parameter "inviteCount"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/MemberResult;->inviteCount:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setPrivilegeList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etao/kakalib/api/beans/PrivilegeDO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, privilegeList:Ljava/util/List;,"Ljava/util/List<Lcom/etao/kakalib/api/beans/PrivilegeDO;>;"
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/MemberResult;->privilegeList:Ljava/util/List;

    .line 109
    return-void
.end method

.method public setRank(Ljava/lang/String;)V
    .locals 0
    .parameter "rank"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/MemberResult;->rank:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0
    .parameter "score"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/MemberResult;->score:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/MemberResult;->source:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/MemberResult;->status:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/MemberResult;->userId:Ljava/lang/String;

    .line 77
    return-void
.end method
