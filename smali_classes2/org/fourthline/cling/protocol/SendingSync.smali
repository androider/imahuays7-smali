.class public abstract Lorg/fourthline/cling/protocol/SendingSync;
.super Lorg/fourthline/cling/protocol/SendingAsync;
.source "SendingSync.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IN:",
        "Lorg/fourthline/cling/model/message/StreamRequestMessage;",
        "OUT:",
        "Lorg/fourthline/cling/model/message/StreamResponseMessage;",
        ">",
        "Lorg/fourthline/cling/protocol/SendingAsync;"
    }
.end annotation


# instance fields
.field private final inputMessage:Lorg/fourthline/cling/model/message/StreamRequestMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TIN;"
        }
    .end annotation
.end field

.field protected outputMessage:Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOUT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/UpnpService;",
            "TIN;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lorg/fourthline/cling/protocol/SendingAsync;-><init>(Lorg/fourthline/cling/UpnpService;)V

    .line 42
    iput-object p2, p0, Lorg/fourthline/cling/protocol/SendingSync;->inputMessage:Lorg/fourthline/cling/model/message/StreamRequestMessage;

    return-void
.end method


# virtual methods
.method protected final execute()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/SendingSync;->executeSync()Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/protocol/SendingSync;->outputMessage:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    return-void
.end method

.method protected abstract executeSync()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOUT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation
.end method

.method public getInputMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TIN;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/fourthline/cling/protocol/SendingSync;->inputMessage:Lorg/fourthline/cling/model/message/StreamRequestMessage;

    return-object v0
.end method

.method public getOutputMessage()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOUT;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/fourthline/cling/protocol/SendingSync;->outputMessage:Lorg/fourthline/cling/model/message/StreamResponseMessage;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
