.class public Lorg/eclipse/jetty/util/security/Credential$MD5;
.super Lorg/eclipse/jetty/util/security/Credential;
.source "Credential.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/security/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MD5"
.end annotation


# static fields
.field public static final __TYPE:Ljava/lang/String; = "MD5:"

.field private static __md:Ljava/security/MessageDigest; = null

.field public static final __md5Lock:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x4ccc2c1bfb42a250L


# instance fields
.field private final _digest:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md5Lock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 132
    invoke-direct {p0}, Lorg/eclipse/jetty/util/security/Credential;-><init>()V

    const-string v0, "MD5:"

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MD5:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v0, 0x10

    .line 134
    invoke-static {p1, v0}, Lorg/eclipse/jetty/util/TypeUtil;->parseBytes(Ljava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    return-void
.end method

.method public static digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 200
    :try_start_0
    sget-object v1, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md5Lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 202
    :try_start_1
    sget-object v2, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    :try_start_2
    const-string v2, "MD5"

    .line 206
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    sput-object v2, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 210
    :try_start_3
    invoke-static {}, Lorg/eclipse/jetty/util/security/Credential;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    invoke-interface {v2, p0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 211
    monitor-exit v1

    return-object v0

    .line 215
    :cond_0
    :goto_0
    sget-object v2, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 216
    sget-object v2, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    const-string v3, "ISO-8859-1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 217
    sget-object p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 218
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MD5:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-static {p0, v2}, Lorg/eclipse/jetty/util/TypeUtil;->toString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object p0

    :catchall_0
    move-exception p0

    .line 218
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception p0

    .line 224
    invoke-static {}, Lorg/eclipse/jetty/util/security/Credential;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, p0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public check(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    .line 151
    :try_start_0
    instance-of v1, p1, [C

    if-eqz v1, :cond_0

    .line 152
    new-instance v1, Ljava/lang/String;

    check-cast p1, [C

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    move-object p1, v1

    .line 153
    :cond_0
    instance-of v1, p1, Lorg/eclipse/jetty/util/security/Password;

    const/4 v2, 0x1

    if-nez v1, :cond_7

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 167
    :cond_1
    instance-of v1, p1, Lorg/eclipse/jetty/util/security/Credential$MD5;

    if-eqz v1, :cond_5

    .line 169
    check-cast p1, Lorg/eclipse/jetty/util/security/Credential$MD5;

    .line 170
    iget-object v1, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    array-length v1, v1

    iget-object v3, p1, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    array-length v3, v3

    if-eq v1, v3, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x0

    .line 171
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 172
    iget-object v3, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    aget-byte v3, v3, v1

    iget-object v4, p1, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    aget-byte v4, v4, v1

    if-eq v3, v4, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v2

    .line 175
    :cond_5
    instance-of v1, p1, Lorg/eclipse/jetty/util/security/Credential;

    if-eqz v1, :cond_6

    .line 179
    check-cast p1, Lorg/eclipse/jetty/util/security/Credential;

    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/util/security/Credential;->check(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 183
    :cond_6
    invoke-static {}, Lorg/eclipse/jetty/util/security/Credential;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " against MD5"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 155
    :cond_7
    :goto_1
    sget-object v1, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md5Lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :try_start_1
    sget-object v3, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    if-nez v3, :cond_8

    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    sput-object v3, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    .line 158
    :cond_8
    sget-object v3, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 159
    sget-object v3, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "ISO-8859-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 160
    sget-object p1, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 161
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_c

    .line 162
    :try_start_2
    array-length v1, p1

    iget-object v3, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    array-length v3, v3

    if-eq v1, v3, :cond_9

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    .line 163
    :goto_2
    array-length v3, p1

    if-ge v1, v3, :cond_b

    .line 164
    aget-byte v3, p1, v1

    iget-object v4, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    aget-byte v4, v4, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eq v3, v4, :cond_a

    return v0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    return v2

    :cond_c
    :goto_3
    return v0

    :catchall_0
    move-exception p1

    .line 161
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 189
    invoke-static {}, Lorg/eclipse/jetty/util/security/Credential;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    return v0
.end method

.method public getDigest()[B
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    return-object v0
.end method
