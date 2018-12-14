.class Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory$1;
.super Lorg/fourthline/cling/protocol/async/SendingNotificationAlive;
.source "MockUpnpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;->createSendingNotificationAlive(Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/protocol/async/SendingNotificationAlive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory$1;->this$0:Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;

    invoke-direct {p0, p2, p3}, Lorg/fourthline/cling/protocol/async/SendingNotificationAlive;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory$1;->this$0:Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;

    invoke-static {v0}, Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;->access$000(Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/fourthline/cling/protocol/async/SendingNotificationAlive;->execute()V

    :cond_0
    return-void
.end method
