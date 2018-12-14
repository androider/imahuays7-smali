.class public Lorg/eclipse/jetty/util/ajax/JSON;
.super Ljava/lang/Object;
.source "JSON.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/ajax/JSON$Literal;,
        Lorg/eclipse/jetty/util/ajax/JSON$Generator;,
        Lorg/eclipse/jetty/util/ajax/JSON$Convertor;,
        Lorg/eclipse/jetty/util/ajax/JSON$Convertible;,
        Lorg/eclipse/jetty/util/ajax/JSON$Output;,
        Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;,
        Lorg/eclipse/jetty/util/ajax/JSON$StringSource;,
        Lorg/eclipse/jetty/util/ajax/JSON$Source;,
        Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

.field static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _convertors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/ajax/JSON$Convertor;",
            ">;"
        }
    .end annotation
.end field

.field private _stringBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    const-class v0, Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 93
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ajax/JSON;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON;->_convertors:Ljava/util/Map;

    const/16 v0, 0x400

    .line 96
    iput v0, p0, Lorg/eclipse/jetty/util/ajax/JSON;->_stringBufferSize:I

    return-void
.end method

.method protected static complete(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)V
    .locals 3

    const/4 v0, 0x0

    .line 1279
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1281
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v1

    add-int/lit8 v2, v0, 0x1

    .line 1282
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    .line 1283
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " while seeking  \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    move v0, v2

    goto :goto_0

    .line 1286
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 1287
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method public static getDefault()Lorg/eclipse/jetty/util/ajax/JSON;
    .locals 1

    .line 136
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 218
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    new-instance v1, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;

    invoke-static {p0}, Lorg/eclipse/jetty/util/IO;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 232
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    new-instance v1, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;

    invoke-static {p0}, Lorg/eclipse/jetty/util/IO;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    new-instance v1, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;-><init>(Ljava/io/Reader;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/Reader;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    new-instance v1, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 172
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    new-instance v1, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 2

    .line 184
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    new-instance v1, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static registerConvertor(Ljava/lang/Class;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;)V
    .locals 1

    .line 131
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->addConvertor(Ljava/lang/Class;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;)V

    return-void
.end method

.method public static setDefault(Lorg/eclipse/jetty/util/ajax/JSON;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ajax/JSON;->getStringBufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 147
    sget-object v1, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v1, v0, p0}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ajax/JSON;->getStringBufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 154
    sget-object v1, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v1, v0, p0}, Lorg/eclipse/jetty/util/ajax/JSON;->appendMap(Ljava/lang/Appendable;Ljava/util/Map;)V

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ajax/JSON;->getStringBufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 161
    sget-object v1, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v1, v0, p0}, Lorg/eclipse/jetty/util/ajax/JSON;->appendArray(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addConvertor(Ljava/lang/Class;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;)V
    .locals 1

    .line 634
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON;->_convertors:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addConvertorFor(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;)V
    .locals 1

    .line 680
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON;->_convertors:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public append(Ljava/lang/Appendable;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    :try_start_0
    const-string p2, "null"

    .line 282
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto/16 :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 285
    :cond_0
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 287
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendMap(Ljava/lang/Appendable;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 289
    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 291
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendString(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_2
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_3

    .line 295
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNumber(Ljava/lang/Appendable;Ljava/lang/Number;)V

    goto :goto_0

    .line 297
    :cond_3
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 299
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendBoolean(Ljava/lang/Appendable;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 301
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 303
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendArray(Ljava/lang/Appendable;Ljava/lang/Object;)V

    goto :goto_0

    .line 305
    :cond_5
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_6

    .line 307
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendString(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_6
    instance-of v0, p2, Lorg/eclipse/jetty/util/ajax/JSON$Convertible;

    if-eqz v0, :cond_7

    .line 311
    check-cast p2, Lorg/eclipse/jetty/util/ajax/JSON$Convertible;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Convertible;)V

    goto :goto_0

    .line 313
    :cond_7
    instance-of v0, p2, Lorg/eclipse/jetty/util/ajax/JSON$Generator;

    if-eqz v0, :cond_8

    .line 315
    check-cast p2, Lorg/eclipse/jetty/util/ajax/JSON$Generator;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Generator;)V

    goto :goto_0

    .line 320
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->getConvertor(Ljava/lang/Class;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 323
    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;Ljava/lang/Object;)V

    goto :goto_0

    .line 325
    :cond_9
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_a

    .line 327
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendArray(Ljava/lang/Appendable;Ljava/util/Collection;)V

    goto :goto_0

    .line 331
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendString(Ljava/lang/Appendable;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 337
    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    return-void
.end method

.method public appendArray(Ljava/lang/Appendable;Ljava/lang/Object;)V
    .locals 3

    if-nez p2, :cond_0

    .line 488
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNull(Ljava/lang/Appendable;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/16 v0, 0x5b

    .line 492
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 493
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    if-eqz v1, :cond_1

    const/16 v2, 0x2c

    .line 498
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 499
    :cond_1
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p2, 0x5d

    .line 502
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 506
    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public appendArray(Ljava/lang/Appendable;Ljava/util/Collection;)V
    .locals 2

    if-nez p2, :cond_0

    .line 452
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNull(Ljava/lang/Appendable;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/16 v0, 0x5b

    .line 456
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 457
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x1

    .line 459
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    const/16 v0, 0x2c

    .line 462
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_1
    const/4 v0, 0x0

    .line 465
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x5d

    .line 468
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 472
    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public appendArray(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 479
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendArray(Ljava/lang/Appendable;Ljava/lang/Object;)V

    return-void
.end method

.method public appendArray(Ljava/lang/StringBuffer;Ljava/util/Collection;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 443
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendArray(Ljava/lang/Appendable;Ljava/util/Collection;)V

    return-void
.end method

.method public appendBoolean(Ljava/lang/Appendable;Ljava/lang/Boolean;)V
    .locals 0

    if-nez p2, :cond_0

    .line 522
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNull(Ljava/lang/Appendable;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    .line 525
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "true"

    goto :goto_0

    :cond_1
    const-string p2, "false"

    :goto_0
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 529
    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public appendBoolean(Ljava/lang/StringBuffer;Ljava/lang/Boolean;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 513
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendBoolean(Ljava/lang/Appendable;Ljava/lang/Boolean;)V

    return-void
.end method

.method public appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Convertible;)V
    .locals 2

    .line 388
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;-><init>(Lorg/eclipse/jetty/util/ajax/JSON;Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$1;)V

    .line 389
    invoke-interface {p2, v0}, Lorg/eclipse/jetty/util/ajax/JSON$Convertible;->toJSON(Lorg/eclipse/jetty/util/ajax/JSON$Output;)V

    .line 390
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->complete()V

    return-void
.end method

.method public appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;Ljava/lang/Object;)V
    .locals 1

    .line 367
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSON$1;

    invoke-direct {v0, p0, p2, p3}, Lorg/eclipse/jetty/util/ajax/JSON$1;-><init>(Lorg/eclipse/jetty/util/ajax/JSON;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Convertible;)V

    return-void
.end method

.method public appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Generator;)V
    .locals 0

    .line 401
    invoke-interface {p2, p1}, Lorg/eclipse/jetty/util/ajax/JSON$Generator;->addJSON(Ljava/lang/Appendable;)V

    return-void
.end method

.method public appendJSON(Ljava/lang/StringBuffer;Lorg/eclipse/jetty/util/ajax/JSON$Convertible;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 383
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Convertible;)V

    return-void
.end method

.method public appendJSON(Ljava/lang/StringBuffer;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 362
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jetty/util/ajax/JSON;->appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;Ljava/lang/Object;)V

    return-void
.end method

.method public appendJSON(Ljava/lang/StringBuffer;Lorg/eclipse/jetty/util/ajax/JSON$Generator;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 396
    invoke-interface {p2, p1}, Lorg/eclipse/jetty/util/ajax/JSON$Generator;->addJSON(Ljava/lang/Appendable;)V

    return-void
.end method

.method public appendMap(Ljava/lang/Appendable;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 416
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNull(Ljava/lang/Appendable;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/16 v0, 0x7b

    .line 420
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 421
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 422
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 425
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quote(Ljava/lang/Appendable;Ljava/lang/String;)V

    const/16 v1, 0x3a

    .line 426
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 427
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 428
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2c

    .line 429
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    :cond_2
    const/16 p2, 0x7d

    .line 432
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 436
    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public appendMap(Ljava/lang/StringBuffer;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 407
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendMap(Ljava/lang/Appendable;Ljava/util/Map;)V

    return-void
.end method

.method public appendNull(Ljava/lang/Appendable;)V
    .locals 1

    :try_start_0
    const-string v0, "null"

    .line 351
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 355
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public appendNull(Ljava/lang/StringBuffer;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 344
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNull(Ljava/lang/Appendable;)V

    return-void
.end method

.method public appendNumber(Ljava/lang/Appendable;Ljava/lang/Number;)V
    .locals 0

    if-nez p2, :cond_0

    .line 545
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNull(Ljava/lang/Appendable;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 548
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 552
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public appendNumber(Ljava/lang/StringBuffer;Ljava/lang/Number;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 536
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNumber(Ljava/lang/Appendable;Ljava/lang/Number;)V

    return-void
.end method

.method public appendString(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    .line 566
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNull(Ljava/lang/Appendable;)V

    return-void

    .line 570
    :cond_0
    invoke-static {p1, p2}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quote(Ljava/lang/Appendable;Ljava/lang/String;)V

    return-void
.end method

.method public appendString(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 559
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendString(Ljava/lang/Appendable;Ljava/lang/String;)V

    return-void
.end method

.method protected contextFor(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSON;
    .locals 0

    return-object p0
.end method

.method protected contextForArray()Lorg/eclipse/jetty/util/ajax/JSON;
    .locals 0

    return-object p0
.end method

.method protected convertTo(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    .line 602
    const-class v0, Lorg/eclipse/jetty/util/ajax/JSON$Convertible;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jetty/util/ajax/JSON$Convertible;

    .line 607
    invoke-interface {p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON$Convertible;->fromJSON(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 612
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 616
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->getConvertor(Ljava/lang/Class;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 619
    invoke-interface {p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;->fromJSON(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public fromJSON(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 258
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getConvertor(Ljava/lang/Class;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    .locals 4

    .line 651
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON;->_convertors:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    if-nez v0, :cond_0

    .line 652
    sget-object v1, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    if-eq p0, v1, :cond_0

    .line 653
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->getConvertor(Ljava/lang/Class;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 655
    const-class v1, Ljava/lang/Object;

    if-eq p1, v1, :cond_2

    .line 657
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 659
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 660
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON;->_convertors:Ljava/util/Map;

    add-int/lit8 v3, v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    move v2, v3

    goto :goto_1

    :cond_1
    if-nez v0, :cond_0

    .line 663
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 664
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON;->_convertors:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getConvertorFor(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    .locals 2

    .line 692
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON;->_convertors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    if-nez v0, :cond_0

    .line 693
    sget-object v1, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    if-eq p0, v1, :cond_0

    .line 694
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->getConvertorFor(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStringBufferSize()I
    .locals 1

    .line 108
    iget v0, p0, Lorg/eclipse/jetty/util/ajax/JSON;->_stringBufferSize:I

    return v0
.end method

.method protected handleUnknown(Lorg/eclipse/jetty/util/ajax/JSON$Source;C)Ljava/lang/Object;
    .locals 3

    .line 886
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\'("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") in "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 587
    new-array p1, p1, [Ljava/lang/Object;

    return-object p1
.end method

.method protected newMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 582
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 789
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    .line 791
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->peek()C

    move-result v2

    const/4 v4, 0x3

    const/16 v5, 0x2a

    const/4 v6, 0x2

    const/16 v7, 0x2f

    const/4 v8, 0x1

    if-ne v1, v8, :cond_1

    if-eq v2, v5, :cond_2

    if-eq v2, v7, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, -0x1

    goto/16 :goto_1

    :cond_1
    if-le v1, v8, :cond_6

    if-eq v2, v5, :cond_5

    if-eq v2, v7, :cond_3

    :cond_2
    const/4 v1, 0x2

    goto/16 :goto_1

    :cond_3
    if-ne v1, v4, :cond_2

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x3

    goto/16 :goto_1

    :cond_6
    if-gez v1, :cond_7

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4

    const/16 v3, 0xd

    if-eq v2, v3, :cond_4

    goto :goto_1

    :cond_7
    const/16 v4, 0x22

    if-eq v2, v4, :cond_11

    const/16 v4, 0x2d

    if-eq v2, v4, :cond_10

    if-eq v2, v7, :cond_f

    const/16 v4, 0x4e

    if-eq v2, v4, :cond_e

    const/16 v4, 0x5b

    if-eq v2, v4, :cond_d

    const/16 v4, 0x66

    if-eq v2, v4, :cond_c

    const/16 v4, 0x6e

    if-eq v2, v4, :cond_b

    const/16 v4, 0x7b

    if-eq v2, v4, :cond_a

    packed-switch v2, :pswitch_data_0

    .line 871
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 872
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parseNumber(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 873
    :cond_8
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_1

    .line 875
    :cond_9
    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jetty/util/ajax/JSON;->handleUnknown(Lorg/eclipse/jetty/util/ajax/JSON$Source;C)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string v0, "undefined"

    .line 860
    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)V

    return-object v3

    :pswitch_1
    const-string v0, "true"

    .line 854
    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)V

    .line 855
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 842
    :cond_a
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parseObject(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    const-string v0, "null"

    .line 851
    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)V

    return-object v3

    :cond_c
    const-string v0, "false"

    .line 857
    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)V

    .line 858
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 844
    :cond_d
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parseArray(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_e
    const-string v0, "NaN"

    .line 863
    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)V

    return-object v3

    :cond_f
    const/4 v1, 0x1

    .line 878
    :goto_1
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto/16 :goto_0

    .line 848
    :cond_10
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parseNumber(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 846
    :cond_11
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parseString(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_12
    return-object v3

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;Z)Ljava/lang/Object;
    .locals 9

    if-nez p2, :cond_0

    .line 702
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    move-object v2, p2

    const/4 p2, 0x0

    const/4 v3, 0x1

    .line 707
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 709
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->peek()C

    move-result v4

    const/4 v5, 0x3

    const/16 v6, 0x2f

    const/16 v7, 0x2a

    const/4 v8, 0x2

    if-ne p2, v1, :cond_3

    if-eq v4, v7, :cond_2

    if-eq v4, v6, :cond_1

    goto :goto_2

    :cond_1
    const/4 p2, -0x1

    goto :goto_2

    :cond_2
    if-ne v3, v1, :cond_4

    const/4 p2, 0x0

    const/4 v3, 0x2

    goto :goto_2

    :cond_3
    if-le p2, v1, :cond_8

    if-eq v4, v7, :cond_7

    if-eq v4, v6, :cond_5

    :cond_4
    const/4 p2, 0x2

    goto :goto_2

    :cond_5
    if-ne p2, v5, :cond_4

    if-ne v3, v8, :cond_6

    return-object v2

    :cond_6
    const/4 p2, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 p2, 0x3

    goto :goto_2

    :cond_8
    if-gez p2, :cond_9

    const/16 v5, 0xa

    if-eq v4, v5, :cond_6

    const/16 v5, 0xd

    if-eq v4, v5, :cond_6

    goto :goto_2

    .line 765
    :cond_9
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_c

    if-ne v4, v6, :cond_a

    const/4 p2, 0x1

    goto :goto_2

    :cond_a
    if-ne v4, v7, :cond_b

    goto :goto_1

    :cond_b
    if-nez v2, :cond_c

    .line 773
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 779
    :cond_c
    :goto_2
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_0

    :cond_d
    return-object v2
.end method

.method protected parseArray(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;
    .locals 9

    .line 948
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    .line 949
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v1

    move-object v6, v5

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 956
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 958
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->peek()C

    move-result v7

    const/16 v8, 0x2c

    if-eq v7, v8, :cond_5

    const/16 v8, 0x5d

    if-eq v7, v8, :cond_4

    .line 983
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 984
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v4, 0x1

    if-nez v4, :cond_2

    .line 989
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ajax/JSON;->contextForArray()Lorg/eclipse/jetty/util/ajax/JSON;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    :goto_1
    move v4, v3

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    .line 992
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 993
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ajax/JSON;->contextForArray()Lorg/eclipse/jetty/util/ajax/JSON;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v5

    .line 995
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v1

    move-object v5, v4

    goto :goto_1

    .line 1000
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ajax/JSON;->contextForArray()Lorg/eclipse/jetty/util/ajax/JSON;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v4

    .line 1001
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v1

    goto :goto_1

    .line 962
    :cond_4
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    packed-switch v4, :pswitch_data_0

    .line 972
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->newArray(I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 968
    :pswitch_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->newArray(I)[Ljava/lang/Object;

    move-result-object p1

    .line 969
    invoke-static {p1, v2, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object p1

    .line 966
    :pswitch_1
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/util/ajax/JSON;->newArray(I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    if-eqz v3, :cond_6

    .line 977
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 979
    :cond_6
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    const/4 v3, 0x1

    goto :goto_0

    .line 1009
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected end of array"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseNumber(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Number;
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v2, v0

    const/4 v4, 0x0

    .line 1164
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v5

    const/16 v6, 0x65

    const/16 v7, 0x45

    const/16 v8, 0x2b

    if-eqz v5, :cond_4

    .line 1166
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->peek()C

    move-result v5

    if-eq v5, v8, :cond_2

    if-eq v5, v7, :cond_0

    if-eq v5, v6, :cond_0

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    goto :goto_1

    :pswitch_0
    const-wide/16 v6, 0xa

    mul-long v2, v2, v6

    add-int/lit8 v5, v5, -0x30

    int-to-long v5, v5

    add-long v7, v2, v5

    .line 1180
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-wide v2, v7

    goto :goto_0

    .line 1194
    :cond_0
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz v4, :cond_1

    const/16 v1, 0x2d

    .line 1196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1197
    :cond_1
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1198
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1199
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_2

    :cond_2
    :pswitch_2
    cmp-long v4, v2, v0

    if-eqz v4, :cond_3

    .line 1186
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "bad number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v4, 0x1

    .line 1188
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_6

    if-eqz v4, :cond_5

    const-wide/16 v0, -0x1

    mul-long v2, v2, v0

    .line 1208
    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1210
    :cond_6
    :goto_3
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1212
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->peek()C

    move-result v1

    if-eq v1, v8, :cond_7

    if-eq v1, v7, :cond_7

    if-eq v1, v6, :cond_7

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    goto :goto_4

    .line 1230
    :cond_7
    :pswitch_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1231
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_3

    .line 1238
    :cond_8
    :goto_4
    new-instance p1, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2d
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x30
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected parseObject(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;
    .locals 6

    .line 891
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v0

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    .line 892
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 893
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ajax/JSON;->newMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "\"}"

    .line 895
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->seekTo(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)C

    move-result v1

    .line 897
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    .line 901
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_1

    .line 905
    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parseString(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x3a

    .line 906
    invoke-virtual {p0, v3, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->seekTo(CLorg/eclipse/jetty/util/ajax/JSON$Source;)V

    .line 907
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    .line 909
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/util/ajax/JSON;->contextFor(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSON;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v3

    .line 910
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ",}"

    .line 912
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->seekTo(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)C

    .line 913
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "\"}"

    .line 917
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->seekTo(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)C

    move-result v1

    goto :goto_0

    :cond_3
    :goto_1
    const-string p1, "x-class"

    .line 920
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    .line 923
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->getConvertorFor(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 925
    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;->fromJSON(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 926
    :cond_4
    sget-object v3, Lorg/eclipse/jetty/util/ajax/JSON;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "No Convertor for x-class \'{}\'"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    const-string p1, "class"

    .line 929
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 934
    :try_start_0
    const-class v3, Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-static {v3, p1}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 935
    invoke-virtual {p0, v3, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->convertTo(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 939
    :catch_0
    sget-object v3, Lorg/eclipse/jetty/util/ajax/JSON;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "No Class for \'{}\'"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-interface {v3, v4, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-object v0
.end method

.method protected parseString(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/String;
    .locals 21

    move-object/from16 v0, p0

    .line 1014
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_0

    .line 1015
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 1020
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->scratchBuffer()[C

    move-result-object v3

    const/16 v6, 0x9

    const/16 v7, 0x72

    const/16 v8, 0x6e

    const/16 v9, 0x66

    const/16 v10, 0x62

    const/16 v11, 0x8

    const/16 v12, 0xc

    const/16 v13, 0x2f

    const/16 v14, 0x5c

    const/4 v15, 0x0

    const/16 v16, 0x1

    if-eqz v3, :cond_e

    const/4 v1, 0x0

    :goto_0
    const/16 v18, 0x0

    .line 1025
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 1027
    array-length v4, v3

    if-lt v1, v4, :cond_1

    .line 1031
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, v3

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1032
    invoke-virtual {v4, v3, v15, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-object/from16 v17, v4

    goto/16 :goto_3

    .line 1036
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v4

    if-eqz v18, :cond_9

    if-eq v4, v2, :cond_8

    if-eq v4, v13, :cond_7

    if-eq v4, v14, :cond_6

    if-eq v4, v10, :cond_5

    if-eq v4, v9, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    packed-switch v4, :pswitch_data_0

    add-int/lit8 v5, v1, 0x1

    .line 1073
    aput-char v4, v3, v1

    goto :goto_2

    .line 1068
    :pswitch_0
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v4

    shl-int/2addr v4, v12

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v5

    int-to-byte v5, v5

    invoke-static {v5}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v5

    shl-int/2addr v5, v11

    add-int/2addr v4, v5

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v5

    int-to-byte v5, v5

    invoke-static {v5}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v5

    int-to-byte v5, v5

    invoke-static {v5}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v5

    add-int/2addr v4, v5

    int-to-char v4, v4

    add-int/lit8 v5, v1, 0x1

    .line 1070
    aput-char v4, v3, v1

    goto :goto_2

    :pswitch_1
    add-int/lit8 v5, v1, 0x1

    .line 1065
    aput-char v6, v3, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v1, 0x1

    const/16 v4, 0xd

    .line 1062
    aput-char v4, v3, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v1, 0x1

    const/16 v4, 0xa

    .line 1059
    aput-char v4, v3, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v1, 0x1

    .line 1056
    aput-char v12, v3, v1

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, 0x1

    .line 1053
    aput-char v11, v3, v1

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v1, 0x1

    .line 1047
    aput-char v14, v3, v1

    goto :goto_2

    :cond_7
    add-int/lit8 v5, v1, 0x1

    .line 1050
    aput-char v13, v3, v1

    goto :goto_2

    :cond_8
    add-int/lit8 v5, v1, 0x1

    .line 1044
    aput-char v2, v3, v1

    :goto_2
    move v1, v5

    goto/16 :goto_0

    :cond_9
    if-ne v4, v14, :cond_a

    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_a
    if-ne v4, v2, :cond_b

    .line 1083
    invoke-virtual {v0, v3, v15, v1}, Lorg/eclipse/jetty/util/ajax/JSON;->toString([CII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_b
    add-int/lit8 v5, v1, 0x1

    .line 1087
    aput-char v4, v3, v1

    move v1, v5

    goto/16 :goto_1

    :cond_c
    const/16 v17, 0x0

    :goto_3
    if-nez v17, :cond_d

    .line 1093
    invoke-virtual {v0, v3, v15, v1}, Lorg/eclipse/jetty/util/ajax/JSON;->toString([CII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_d
    move-object/from16 v1, v17

    goto :goto_5

    .line 1096
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/util/ajax/JSON;->getStringBufferSize()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_4
    const/16 v18, 0x0

    .line 1100
    :goto_5
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1102
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v3

    if-eqz v18, :cond_16

    if-eq v3, v2, :cond_15

    if-eq v3, v13, :cond_14

    if-eq v3, v14, :cond_13

    if-eq v3, v10, :cond_12

    if-eq v3, v9, :cond_11

    if-eq v3, v8, :cond_10

    if-eq v3, v7, :cond_f

    packed-switch v3, :pswitch_data_1

    .line 1139
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_6
    const/16 v4, 0xd

    :goto_7
    const/16 v5, 0xa

    goto :goto_4

    .line 1134
    :pswitch_2
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v3

    shl-int/2addr v3, v12

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v4

    shl-int/2addr v4, v11

    add-int/2addr v3, v4

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v4

    add-int/2addr v3, v4

    int-to-char v3, v3

    .line 1136
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1131
    :pswitch_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_f
    const/16 v4, 0xd

    .line 1128
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_10
    const/16 v4, 0xd

    const/16 v5, 0xa

    .line 1125
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_11
    const/16 v4, 0xd

    const/16 v5, 0xa

    .line 1122
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_12
    const/16 v4, 0xd

    const/16 v5, 0xa

    .line 1119
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_13
    const/16 v4, 0xd

    const/16 v5, 0xa

    .line 1113
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_14
    const/16 v4, 0xd

    const/16 v5, 0xa

    .line 1116
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_15
    const/16 v4, 0xd

    const/16 v5, 0xa

    .line 1110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_16
    const/16 v4, 0xd

    const/16 v5, 0xa

    if-ne v3, v14, :cond_17

    const/16 v18, 0x1

    goto/16 :goto_5

    :cond_17
    if-ne v3, v2, :cond_18

    goto :goto_8

    .line 1152
    :cond_18
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1155
    :cond_19
    :goto_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected seekTo(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)C
    .locals 3

    .line 1260
    :goto_0
    invoke-interface {p2}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1262
    invoke-interface {p2}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->peek()C

    move-result v0

    .line 1263
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    return v0

    .line 1268
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1269
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\' while seeking one of \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1270
    :cond_1
    invoke-interface {p2}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 1273
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected one of \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected seekTo(CLorg/eclipse/jetty/util/ajax/JSON$Source;)V
    .locals 3

    .line 1244
    :goto_0
    invoke-interface {p2}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1246
    invoke-interface {p2}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->peek()C

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 1250
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1251
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " while seeking \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1252
    :cond_1
    invoke-interface {p2}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 1255
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setStringBufferSize(I)V
    .locals 0

    .line 118
    iput p1, p0, Lorg/eclipse/jetty/util/ajax/JSON;->_stringBufferSize:I

    return-void
.end method

.method public toJSON(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ajax/JSON;->getStringBufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 245
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected toString([CII)Ljava/lang/String;
    .locals 1

    .line 577
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
