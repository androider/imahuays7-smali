.class public Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;
.super Ljava/lang/Thread;
.source "ShutdownMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/ShutdownMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShutdownMonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/ShutdownMonitor;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 69
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->setDaemon(Z)V

    const-string p1, "ShutdownMonitor"

    .line 70
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private startListenSocket()V
    .locals 7

    .line 166
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v0}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$900(Lorg/eclipse/jetty/server/ShutdownMonitor;)I

    move-result v0

    if-gez v0, :cond_1

    .line 168
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v0}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$800(Lorg/eclipse/jetty/server/ShutdownMonitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShutdownMonitor not in use (port < 0): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v2}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$900(Lorg/eclipse/jetty/server/ShutdownMonitor;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 175
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    new-instance v3, Ljava/net/ServerSocket;

    iget-object v4, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v4}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$900(Lorg/eclipse/jetty/server/ShutdownMonitor;)I

    move-result v4

    const-string v5, "127.0.0.1"

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v3, v4, v1, v5}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    invoke-static {v2, v3}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$102(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 176
    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v2}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$900(Lorg/eclipse/jetty/server/ShutdownMonitor;)I

    move-result v2

    if-nez v2, :cond_2

    .line 179
    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    iget-object v3, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v3}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$100(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v3

    invoke-static {v2, v3}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$902(Lorg/eclipse/jetty/server/ShutdownMonitor;I)I

    .line 180
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "STOP.PORT=%d%n"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v5}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$900(Lorg/eclipse/jetty/server/ShutdownMonitor;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 183
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v2}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$200(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 186
    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-wide/high16 v3, 0x43e0000000000000L    # 9.223372036854776E18

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    mul-double v5, v5, v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-double v3, v3

    add-double/2addr v5, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-double v3, v3

    add-double/2addr v5, v3

    double-to-long v3, v5

    const/16 v5, 0x24

    invoke-static {v3, v4, v5}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$202(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "STOP.KEY=%s%n"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v5}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$200(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v3, "STOP.PORT=%d"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v5}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$900(Lorg/eclipse/jetty/server/ShutdownMonitor;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v3, "STOP.KEY=%s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v5}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$200(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v3, "%s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v4}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$100(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/net/ServerSocket;

    move-result-object v4

    aput-object v4, v1, v0

    :goto_0
    invoke-static {v2, v3, v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    .line 192
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v3, v2}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$700(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/Throwable;)V

    .line 193
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error binding monitor port "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v5}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$900(Lorg/eclipse/jetty/server/ShutdownMonitor;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$102(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v3, "STOP.PORT=%d"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v5}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$900(Lorg/eclipse/jetty/server/ShutdownMonitor;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v3, "STOP.KEY=%s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v5}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$200(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v3, "%s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v4}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$100(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/net/ServerSocket;

    move-result-object v4

    aput-object v4, v1, v0

    goto :goto_0

    :goto_1
    return-void

    .line 199
    :goto_2
    iget-object v3, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v4, "STOP.PORT=%d"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v6}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$900(Lorg/eclipse/jetty/server/ShutdownMonitor;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iget-object v3, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v4, "STOP.KEY=%s"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v6}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$200(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iget-object v3, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v4, "%s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v5}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$100(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/net/ServerSocket;

    move-result-object v5

    aput-object v5, v1, v0

    invoke-static {v3, v4, v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 76
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v0}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$100(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/net/ServerSocket;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v0}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$100(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/net/ServerSocket;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 86
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$100(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :try_start_1
    new-instance v2, Ljava/io/LineNumberReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 89
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 90
    iget-object v4, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v4}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$200(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Ignoring command with incorrect key"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$400(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/net/Socket;)V

    goto :goto_0

    .line 96
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 98
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 99
    iget-object v4, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v5, "command=%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "stop"

    .line 100
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 103
    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v4, "Issuing graceful shutdown.."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-static {}, Lorg/eclipse/jetty/util/thread/ShutdownThread;->getInstance()Lorg/eclipse/jetty/util/thread/ShutdownThread;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/thread/ShutdownThread;->run()V

    .line 107
    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v4, "Informing client that we are stopped."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "Stopped\r\n"

    const-string v4, "UTF-8"

    .line 108
    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 109
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 112
    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v3, "Shutting down monitor"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$400(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/net/Socket;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 115
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v2}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$100(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/net/ServerSocket;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$500(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/net/ServerSocket;)V

    .line 116
    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v1, v0}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$102(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 118
    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$600(Lorg/eclipse/jetty/server/ShutdownMonitor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 121
    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v2, "Killing JVM"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-static {v7}, Ljava/lang/System;->exit(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_2
    :try_start_4
    const-string v0, "status"

    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "OK\r\n"

    const-string v2, "UTF-8"

    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 129
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    move-object v0, v1

    .line 139
    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v1, v0}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$400(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/net/Socket;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 134
    :goto_3
    :try_start_5
    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v2, v0}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$700(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/Throwable;)V

    .line 135
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    .line 139
    :goto_4
    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$400(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/net/Socket;)V

    .line 140
    throw v0

    :cond_5
    return-void
.end method

.method public start()V
    .locals 3

    .line 147
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "ShutdownMonitorThread already started"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void

    .line 153
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->startListenSocket()V

    .line 155
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v0}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$100(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/net/ServerSocket;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v0}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$800(Lorg/eclipse/jetty/server/ShutdownMonitor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Starting ShutdownMonitorThread"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    :cond_2
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
