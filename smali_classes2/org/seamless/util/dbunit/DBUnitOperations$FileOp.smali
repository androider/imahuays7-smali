.class public Lorg/seamless/util/dbunit/DBUnitOperations$FileOp;
.super Lorg/seamless/util/dbunit/DBUnitOperations$Op;
.source "DBUnitOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/seamless/util/dbunit/DBUnitOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileOp"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/seamless/util/dbunit/DBUnitOperations;


# direct methods
.method public constructor <init>(Lorg/seamless/util/dbunit/DBUnitOperations;Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lorg/seamless/util/dbunit/DBUnitOperations$FileOp;->this$0:Lorg/seamless/util/dbunit/DBUnitOperations;

    .line 115
    invoke-direct {p0, p2}, Lorg/seamless/util/dbunit/DBUnitOperations$Op;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/seamless/util/dbunit/DBUnitOperations;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lorg/seamless/util/dbunit/DBUnitOperations$FileOp;->this$0:Lorg/seamless/util/dbunit/DBUnitOperations;

    .line 119
    invoke-direct {p0, p2, p3}, Lorg/seamless/util/dbunit/DBUnitOperations$Op;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/seamless/util/dbunit/DBUnitOperations;Ljava/lang/String;Ljava/lang/String;Lorg/dbunit/operation/DatabaseOperation;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lorg/seamless/util/dbunit/DBUnitOperations$FileOp;->this$0:Lorg/seamless/util/dbunit/DBUnitOperations;

    .line 123
    invoke-direct {p0, p2, p3, p4}, Lorg/seamless/util/dbunit/DBUnitOperations$Op;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/dbunit/operation/DatabaseOperation;)V

    return-void
.end method


# virtual methods
.method protected openStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 129
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 131
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
