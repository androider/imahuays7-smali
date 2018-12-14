.class public Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerException;
.super Lorg/fourthline/cling/model/action/ActionException;
.source "ConnectionManagerException.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/model/action/ActionException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lorg/fourthline/cling/model/action/ActionException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/ErrorCode;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;)V
    .locals 1

    .line 47
    invoke-virtual {p1}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/fourthline/cling/model/action/ActionException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;Ljava/lang/String;)V
    .locals 2

    .line 43
    invoke-virtual {p1}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->getCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/fourthline/cling/model/action/ActionException;-><init>(ILjava/lang/String;)V

    return-void
.end method
