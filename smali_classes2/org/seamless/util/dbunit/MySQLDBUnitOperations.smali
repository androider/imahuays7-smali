.class public abstract Lorg/seamless/util/dbunit/MySQLDBUnitOperations;
.super Lorg/seamless/util/dbunit/DBUnitOperations;
.source "MySQLDBUnitOperations.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/seamless/util/dbunit/DBUnitOperations;-><init>()V

    return-void
.end method


# virtual methods
.method protected disableReferentialIntegrity(Lorg/dbunit/database/IDatabaseConnection;)V
    .locals 1

    .line 27
    :try_start_0
    invoke-interface {p1}, Lorg/dbunit/database/IDatabaseConnection;->getConnection()Ljava/sql/Connection;

    move-result-object p1

    const-string v0, "set foreign_key_checks=0"

    invoke-interface {p1, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected enableReferentialIntegrity(Lorg/dbunit/database/IDatabaseConnection;)V
    .locals 1

    .line 36
    :try_start_0
    invoke-interface {p1}, Lorg/dbunit/database/IDatabaseConnection;->getConnection()Ljava/sql/Connection;

    move-result-object p1

    const-string v0, "set foreign_key_checks=1"

    invoke-interface {p1, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 38
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
