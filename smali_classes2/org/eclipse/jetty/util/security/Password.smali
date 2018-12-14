.class public Lorg/eclipse/jetty/util/security/Password;
.super Lorg/eclipse/jetty/util/security/Credential;
.source "Password.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final __OBFUSCATE:Ljava/lang/String; = "OBF:"

.field private static final serialVersionUID:J = 0x46430ecd65ae3425L


# instance fields
.field private _pw:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lorg/eclipse/jetty/util/security/Password;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/security/Password;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Lorg/eclipse/jetty/util/security/Credential;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    .line 76
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    const-string v0, "OBF:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    invoke-static {p1}, Lorg/eclipse/jetty/util/security/Password;->deobfuscate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static deobfuscate(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "OBF:"

    .line 185
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 187
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 189
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    add-int/lit8 v4, v2, 0x4

    .line 191
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x24

    .line 192
    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 193
    div-int/lit16 v5, v2, 0x100

    .line 194
    rem-int/lit16 v2, v2, 0x100

    add-int/lit8 v6, v3, 0x1

    add-int/2addr v5, v2

    add-int/lit16 v5, v5, -0xfe

    .line 195
    div-int/lit8 v5, v5, 0x2

    int-to-byte v2, v5

    aput-byte v2, v0, v3

    move v2, v4

    move v3, v6

    goto :goto_0

    .line 198
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    return-object p0
.end method

.method public static getPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/util/security/Password;
    .locals 3

    .line 218
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 219
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    goto :goto_3

    .line 223
    :cond_1
    :goto_0
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    const-string p0, " [dft]"

    goto :goto_1

    :cond_2
    const-string p0, ""

    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 224
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    const/16 p0, 0x200

    .line 225
    new-array p0, p0, [B

    .line 226
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_3

    .line 227
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 231
    sget-object v0, Lorg/eclipse/jetty/util/security/Password;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "EXCEPTION "

    invoke-interface {v0, v1, p0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    move-object p0, p1

    :goto_2
    if-eqz p0, :cond_4

    .line 233
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    move-object p0, p2

    .line 235
    :cond_5
    :goto_3
    new-instance p1, Lorg/eclipse/jetty/util/security/Password;

    invoke-direct {p1, p0}, Lorg/eclipse/jetty/util/security/Password;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    .line 244
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    array-length v0, p0

    if-eq v0, v1, :cond_0

    .line 246
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Usage - java org.eclipse.jetty.security.Password [<user>] <password>"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "If the password is ?, the user will be prompted for the password"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 250
    :cond_0
    array-length v0, p0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    const/4 v2, 0x0

    :cond_1
    aget-object v0, p0, v2

    .line 251
    new-instance v2, Lorg/eclipse/jetty/util/security/Password;

    invoke-direct {v2, v0}, Lorg/eclipse/jetty/util/security/Password;-><init>(Ljava/lang/String;)V

    .line 252
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/security/Password;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 253
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/security/Password;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jetty/util/security/Password;->obfuscate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Lorg/eclipse/jetty/util/security/Credential$MD5;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 255
    array-length v0, p0

    if-ne v0, v1, :cond_2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    aget-object p0, p0, v3

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/security/Password;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/eclipse/jetty/util/security/Credential$Crypt;->crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static obfuscate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "OBF:"

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 147
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 149
    aget-byte v3, v1, v2

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v4, v2

    aget-byte v4, v1, v4

    add-int/lit8 v3, v3, 0x7f

    add-int v5, v3, v4

    sub-int/2addr v3, v4

    mul-int/lit16 v5, v5, 0x100

    add-int/2addr v5, v3

    const/16 v3, 0x24

    .line 154
    invoke-static {v5, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x30

    packed-switch v4, :pswitch_data_0

    .line 174
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 170
    :pswitch_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 165
    :pswitch_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 159
    :pswitch_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public check(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 99
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jetty/util/security/Password;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 101
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 103
    :cond_2
    instance-of v0, p1, [C

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    check-cast p1, [C

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p1

    return p1

    .line 105
    :cond_3
    instance-of v0, p1, Lorg/eclipse/jetty/util/security/Credential;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/eclipse/jetty/util/security/Credential;

    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/util/security/Credential;->check(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 120
    :cond_1
    instance-of v2, p1, Lorg/eclipse/jetty/util/security/Password;

    if-eqz v2, :cond_4

    .line 122
    check-cast p1, Lorg/eclipse/jetty/util/security/Password;

    .line 124
    iget-object v2, p1, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    iget-object p1, p1, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0

    .line 127
    :cond_4
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 128
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toStarString()Ljava/lang/String;
    .locals 3

    const-string v0, "*****************************************************"

    .line 90
    iget-object v1, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    return-object v0
.end method
