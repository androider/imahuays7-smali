.class Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl$1;
.super Lorg/seamless/util/Iterators$Synchronized;
.source "NetworkAddressFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;->getNetworkInterfaces()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seamless/util/Iterators$Synchronized<",
        "Ljava/net/NetworkInterface;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;Ljava/util/Collection;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl$1;->this$0:Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;

    invoke-direct {p0, p2}, Lorg/seamless/util/Iterators$Synchronized;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method protected synchronizedRemove(I)V
    .locals 2

    .line 148
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl$1;->this$0:Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;

    iget-object v0, v0, Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;->networkInterfaces:Ljava/util/List;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl$1;->this$0:Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;

    iget-object v1, v1, Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;->networkInterfaces:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 150
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
