.class public Lcom/etao/kakalib/api/beans/PrivilegeDO;
.super Ljava/lang/Object;
.source "PrivilegeDO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6337163944cd4a5eL


# instance fields
.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private pic:Ljava/lang/String;

.field private privilegeName:Ljava/lang/String;

.field private privilegeURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/PrivilegeDO;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/PrivilegeDO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/PrivilegeDO;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivilegeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/PrivilegeDO;->privilegeName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivilegeURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/PrivilegeDO;->privilegeURL:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/PrivilegeDO;->description:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/PrivilegeDO;->id:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0
    .parameter "pic"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/PrivilegeDO;->pic:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setPrivilegeName(Ljava/lang/String;)V
    .locals 0
    .parameter "privilegeName"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/PrivilegeDO;->privilegeName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setPrivilegeURL(Ljava/lang/String;)V
    .locals 0
    .parameter "privilegeURL"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/PrivilegeDO;->privilegeURL:Ljava/lang/String;

    .line 54
    return-void
.end method
