.class public Lorg/seamless/util/dbunit/DBUnitOperations$ClasspathOp;
.super Lorg/seamless/util/dbunit/DBUnitOperations$Op;
.source "DBUnitOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/seamless/util/dbunit/DBUnitOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClasspathOp"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lorg/seamless/util/dbunit/DBUnitOperations$Op;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lorg/seamless/util/dbunit/DBUnitOperations$Op;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/dbunit/operation/DatabaseOperation;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lorg/seamless/util/dbunit/DBUnitOperations$Op;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/dbunit/operation/DatabaseOperation;)V

    return-void
.end method


# virtual methods
.method protected openStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 108
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
