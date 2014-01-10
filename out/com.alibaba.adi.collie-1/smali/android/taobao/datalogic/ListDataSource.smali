.class public Landroid/taobao/datalogic/ListDataSource;
.super Landroid/taobao/datalogic/DataSourceImpl;
.source "ListDataSource.java"


# direct methods
.method public constructor <init>(Landroid/taobao/common/i/DLConnectorHelper;ILandroid/app/Application;)V
    .locals 1
    .parameter "helper"
    .parameter "catchType"
    .parameter "context"

    .prologue
    .line 20
    const-class v0, Landroid/taobao/common/dataobject/PageDataObject;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/taobao/datalogic/DataSourceImpl;-><init>(Landroid/taobao/common/i/DLConnectorHelper;ILandroid/app/Application;Ljava/lang/Class;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/taobao/common/i/DLConnectorHelper;Landroid/app/Application;)V
    .locals 2
    .parameter "helper"
    .parameter "context"

    .prologue
    .line 14
    const/4 v0, 0x0

    const-class v1, Landroid/taobao/common/dataobject/PageDataObject;

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/taobao/datalogic/DataSourceImpl;-><init>(Landroid/taobao/common/i/DLConnectorHelper;ILandroid/app/Application;Ljava/lang/Class;)V

    .line 16
    return-void
.end method
