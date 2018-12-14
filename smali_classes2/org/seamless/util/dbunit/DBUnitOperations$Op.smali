.class public abstract Lorg/seamless/util/dbunit/DBUnitOperations$Op;
.super Ljava/lang/Object;
.source "DBUnitOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/seamless/util/dbunit/DBUnitOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Op"
.end annotation


# instance fields
.field dataSet:Lorg/dbunit/dataset/ReplacementDataSet;

.field operation:Lorg/dbunit/operation/DatabaseOperation;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 50
    sget-object v0, Lorg/dbunit/operation/DatabaseOperation;->CLEAN_INSERT:Lorg/dbunit/operation/DatabaseOperation;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/seamless/util/dbunit/DBUnitOperations$Op;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/dbunit/operation/DatabaseOperation;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 57
    sget-object v0, Lorg/dbunit/operation/DatabaseOperation;->CLEAN_INSERT:Lorg/dbunit/operation/DatabaseOperation;

    invoke-direct {p0, p1, p2, v0}, Lorg/seamless/util/dbunit/DBUnitOperations$Op;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/dbunit/operation/DatabaseOperation;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/dbunit/operation/DatabaseOperation;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 63
    :try_start_0
    new-instance v0, Lorg/dbunit/dataset/ReplacementDataSet;

    new-instance v1, Lorg/dbunit/dataset/xml/FlatXmlDataSet;

    invoke-virtual {p0, p1}, Lorg/seamless/util/dbunit/DBUnitOperations$Op;->openStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/seamless/util/dbunit/DBUnitOperations$Op;->openStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lorg/dbunit/dataset/xml/FlatXmlDataSet;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/dbunit/dataset/ReplacementDataSet;-><init>(Lorg/dbunit/dataset/IDataSet;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/dbunit/dataset/ReplacementDataSet;

    new-instance p2, Lorg/dbunit/dataset/xml/FlatXmlDataSet;

    invoke-virtual {p0, p1}, Lorg/seamless/util/dbunit/DBUnitOperations$Op;->openStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/dbunit/dataset/xml/FlatXmlDataSet;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, p2}, Lorg/dbunit/dataset/ReplacementDataSet;-><init>(Lorg/dbunit/dataset/IDataSet;)V

    :goto_0
    iput-object v0, p0, Lorg/seamless/util/dbunit/DBUnitOperations$Op;->dataSet:Lorg/dbunit/dataset/ReplacementDataSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    iget-object p1, p0, Lorg/seamless/util/dbunit/DBUnitOperations$Op;->dataSet:Lorg/dbunit/dataset/ReplacementDataSet;

    const-string p2, "[NULL]"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/dbunit/dataset/ReplacementDataSet;->addReplacementObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    iput-object p3, p0, Lorg/seamless/util/dbunit/DBUnitOperations$Op;->operation:Lorg/dbunit/operation/DatabaseOperation;

    return-void

    .line 67
    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public execute(Lorg/dbunit/database/IDatabaseConnection;)V
    .locals 2

    .line 83
    :try_start_0
    iget-object v0, p0, Lorg/seamless/util/dbunit/DBUnitOperations$Op;->operation:Lorg/dbunit/operation/DatabaseOperation;

    iget-object v1, p0, Lorg/seamless/util/dbunit/DBUnitOperations$Op;->dataSet:Lorg/dbunit/dataset/ReplacementDataSet;

    invoke-virtual {v0, p1, v1}, Lorg/dbunit/operation/DatabaseOperation;->execute(Lorg/dbunit/database/IDatabaseConnection;Lorg/dbunit/dataset/IDataSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getDataSet()Lorg/dbunit/dataset/IDataSet;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/seamless/util/dbunit/DBUnitOperations$Op;->dataSet:Lorg/dbunit/dataset/ReplacementDataSet;

    return-object v0
.end method

.method public getOperation()Lorg/dbunit/operation/DatabaseOperation;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/seamless/util/dbunit/DBUnitOperations$Op;->operation:Lorg/dbunit/operation/DatabaseOperation;

    return-object v0
.end method

.method protected abstract openStream(Ljava/lang/String;)Ljava/io/InputStream;
.end method
