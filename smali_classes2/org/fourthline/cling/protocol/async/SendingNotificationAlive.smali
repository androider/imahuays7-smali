.class public Lorg/fourthline/cling/protocol/async/SendingNotificationAlive;
.super Lorg/fourthline/cling/protocol/async/SendingNotification;
.source "SendingNotificationAlive.java"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lorg/fourthline/cling/protocol/async/SendingNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/protocol/async/SendingNotificationAlive;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/protocol/async/SendingNotification;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 40
    sget-object v0, Lorg/fourthline/cling/protocol/async/SendingNotificationAlive;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending alive messages ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/SendingNotificationAlive;->getBulkRepeat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " times) for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/SendingNotificationAlive;->getDevice()Lorg/fourthline/cling/model/meta/LocalDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 41
    invoke-super {p0}, Lorg/fourthline/cling/protocol/async/SendingNotification;->execute()V

    return-void
.end method

.method protected getNotificationSubtype()Lorg/fourthline/cling/model/types/NotificationSubtype;
    .locals 1

    .line 45
    sget-object v0, Lorg/fourthline/cling/model/types/NotificationSubtype;->ALIVE:Lorg/fourthline/cling/model/types/NotificationSubtype;

    return-object v0
.end method
