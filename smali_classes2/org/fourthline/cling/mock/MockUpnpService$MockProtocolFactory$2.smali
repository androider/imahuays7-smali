.class Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory$2;
.super Lorg/fourthline/cling/protocol/async/SendingSearch;
.source "MockUpnpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;->createSendingSearch(Lorg/fourthline/cling/model/message/header/UpnpHeader;I)Lorg/fourthline/cling/protocol/async/SendingSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/header/UpnpHeader;I)V
    .locals 0

    .line 140
    iput-object p1, p0, Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory$2;->this$0:Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;

    invoke-direct {p0, p2, p3, p4}, Lorg/fourthline/cling/protocol/async/SendingSearch;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/header/UpnpHeader;I)V

    return-void
.end method


# virtual methods
.method public getBulkIntervalMilliseconds()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
