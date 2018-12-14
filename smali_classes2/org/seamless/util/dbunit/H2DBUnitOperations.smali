.class public abstract Lorg/seamless/util/dbunit/H2DBUnitOperations;
.super Lorg/seamless/util/dbunit/DBUnitOperations;
.source "H2DBUnitOperations.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/seamless/util/dbunit/DBUnitOperations;-><init>()V

    return-void
.end method


# virtual methods
.method protected disableReferentialIntegrity(Lorg/dbunit/database/IDatabaseConnection;)V
    .locals 1

    .line 33
    :try_start_0
    invoke-interface {p1}, Lorg/dbunit/database/IDatabaseConnection;->getConnection()Ljava/sql/Connection;

    move-result-object p1

    const-string v0, "set referential_integrity FALSE"

    invoke-interface {p1, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected editConfig(Lorg/dbunit/database/DatabaseConfig;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Lorg/seamless/util/dbunit/DBUnitOperations;->editConfig(Lorg/dbunit/database/DatabaseConfig;)V

    const-string v0, "http://www.dbunit.org/properties/datatypeFactory"

    .line 54
    new-instance v1, Lorg/seamless/util/dbunit/H2DBUnitOperations$1;

    invoke-direct {v1, p0}, Lorg/seamless/util/dbunit/H2DBUnitOperations$1;-><init>(Lorg/seamless/util/dbunit/H2DBUnitOperations;)V

    invoke-virtual {p1, v0, v1}, Lorg/dbunit/database/DatabaseConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected enableReferentialIntegrity(Lorg/dbunit/database/IDatabaseConnection;)V
    .locals 1

    .line 42
    :try_start_0
    invoke-interface {p1}, Lorg/dbunit/database/IDatabaseConnection;->getConnection()Ljava/sql/Connection;

    move-result-object p1

    const-string v0, "set referential_integrity TRUE"

    invoke-interface {p1, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
