.class public abstract Lorg/eclipse/jetty/util/Utf8Appendable;
.super Ljava/lang/Object;
.source "Utf8Appendable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;
    }
.end annotation


# static fields
.field private static final BYTE_TABLE:[B

.field protected static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final REPLACEMENT:C = '\ufffd'

.field private static final TRANS_TABLE:[B

.field private static final UTF8_ACCEPT:I = 0x0

.field private static final UTF8_REJECT:I = 0xc


# instance fields
.field protected final _appendable:Ljava/lang/Appendable;

.field private _codep:I

.field protected _state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lorg/eclipse/jetty/util/Utf8Appendable;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/Utf8Appendable;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/16 v0, 0x100

    .line 60
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/jetty/util/Utf8Appendable;->BYTE_TABLE:[B

    const/16 v0, 0x6c

    .line 74
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/eclipse/jetty/util/Utf8Appendable;->TRANS_TABLE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0xat
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x3t
        0x3t
        0xbt
        0x6t
        0x6t
        0x6t
        0x5t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0xct
        0x18t
        0x24t
        0x3ct
        0x60t
        0x54t
        0xct
        0xct
        0xct
        0x30t
        0x48t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x0t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x0t
        0xct
        0x0t
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x24t
        0xct
        0x24t
        0xct
        0xct
        0xct
        0x24t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x24t
        0xct
        0x24t
        0xct
        0xct
        0xct
        0x24t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    .line 89
    iput-object p1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    return-void
.end method


# virtual methods
.method public append(B)V
    .locals 1

    .line 103
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/Utf8Appendable;->appendByte(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 107
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public append([BII)V
    .locals 1

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    .line 117
    :try_start_0
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/Utf8Appendable;->appendByte(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 121
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    return-void
.end method

.method public append([BIII)Z
    .locals 1

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_1

    .line 132
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Utf8Appendable;->length()I

    move-result v0

    if-le v0, p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 134
    :cond_0
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/Utf8Appendable;->appendByte(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 140
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected appendByte(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xff

    if-lez p1, :cond_0

    .line 147
    iget v1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    if-nez v1, :cond_0

    .line 149
    iget-object v1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    and-int/2addr p1, v0

    int-to-char p1, p1

    invoke-interface {v1, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto/16 :goto_2

    :cond_0
    and-int/lit16 v1, p1, 0xff

    .line 154
    sget-object v2, Lorg/eclipse/jetty/util/Utf8Appendable;->BYTE_TABLE:[B

    aget-byte v2, v2, v1

    .line 155
    iget v3, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    if-nez v3, :cond_1

    shr-int/2addr v0, v2

    and-int/2addr v0, v1

    goto :goto_0

    :cond_1
    and-int/lit8 v0, v1, 0x3f

    iget v1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_codep:I

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    :goto_0
    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_codep:I

    .line 156
    sget-object v0, Lorg/eclipse/jetty/util/Utf8Appendable;->TRANS_TABLE:[B

    iget v1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/16 v2, 0xc

    if-eq v0, v2, :cond_2

    .line 181
    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    goto :goto_2

    .line 174
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byte "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/eclipse/jetty/util/TypeUtil;->toHexString(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in state "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    div-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 175
    iput v1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_codep:I

    .line 176
    iput v1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    .line 177
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    const v1, 0xfffd

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 178
    new-instance v0, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_3
    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    .line 162
    iget p1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_codep:I

    const v0, 0xd800

    if-ge p1, v0, :cond_4

    .line 164
    iget-object p1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    iget v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_codep:I

    int-to-char v0, v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    .line 168
    :cond_4
    iget p1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_codep:I

    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_5

    aget-char v2, p1, v1

    .line 169
    iget-object v3, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    invoke-interface {v3, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method protected checkState()V
    .locals 2

    .line 202
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Utf8Appendable;->isUtf8SequenceComplete()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 204
    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_codep:I

    .line 205
    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    .line 208
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    const v1, 0xfffd

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    new-instance v0, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;

    const-string v1, "incomplete UTF8 sequence"

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 212
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method public isUtf8SequenceComplete()Z
    .locals 1

    .line 189
    iget v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract length()I
.end method

.method protected reset()V
    .locals 1

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    return-void
.end method

.method public toReplacedString()Ljava/lang/String;
    .locals 4

    .line 220
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Utf8Appendable;->isUtf8SequenceComplete()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 222
    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_codep:I

    .line 223
    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    .line 226
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    const v2, 0xfffd

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    new-instance v1, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;

    const-string v2, "incomplete UTF8 sequence"

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;-><init>(Ljava/lang/String;)V

    .line 233
    sget-object v2, Lorg/eclipse/jetty/util/Utf8Appendable;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    sget-object v0, Lorg/eclipse/jetty/util/Utf8Appendable;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 230
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 236
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
