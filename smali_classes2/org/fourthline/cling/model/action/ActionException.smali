.class public Lorg/fourthline/cling/model/action/ActionException;
.super Ljava/lang/Exception;
.source "ActionException.java"


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 31
    iput p1, p0, Lorg/fourthline/cling/model/action/ActionException;->errorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 35
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    iput p1, p0, Lorg/fourthline/cling/model/action/ActionException;->errorCode:I

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/ErrorCode;)V
    .locals 1

    .line 40
    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/ErrorCode;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/ErrorCode;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/fourthline/cling/model/action/ActionException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 52
    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/ErrorCode;->getCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/ErrorCode;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p3}, Lorg/fourthline/cling/model/action/ActionException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;Z)V
    .locals 1

    .line 48
    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/ErrorCode;->getCode()I

    move-result v0

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/ErrorCode;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/fourthline/cling/model/action/ActionException;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 56
    iget v0, p0, Lorg/fourthline/cling/model/action/ActionException;->errorCode:I

    return v0
.end method
