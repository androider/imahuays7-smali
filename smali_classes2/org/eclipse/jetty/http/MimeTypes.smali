.class public Lorg/eclipse/jetty/http/MimeTypes;
.super Ljava/lang/Object;
.source "MimeTypes.java"


# static fields
.field public static final CACHE:Lorg/eclipse/jetty/io/BufferCache;

.field public static final FORM_ENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final FORM_ENCODED_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final FORM_ENCODED_ORDINAL:I = 0x1

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final MESSAGE_HTTP:Ljava/lang/String; = "message/http"

.field public static final MESSAGE_HTTP_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final MESSAGE_HTTP_ORDINAL:I = 0x2

.field public static final MULTIPART_BYTERANGES:Ljava/lang/String; = "multipart/byteranges"

.field public static final MULTIPART_BYTERANGES_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final MULTIPART_BYTERANGES_ORDINAL:I = 0x3

.field public static final TEXT_HTML:Ljava/lang/String; = "text/html"

.field public static final TEXT_HTML_8859_1:Ljava/lang/String; = "text/html;charset=ISO-8859-1"

.field public static final TEXT_HTML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_HTML_8859_1_ORDINAL:I = 0x8

.field public static final TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_HTML_ORDINAL:I = 0x4

.field public static final TEXT_HTML_UTF_8:Ljava/lang/String; = "text/html;charset=UTF-8"

.field public static final TEXT_HTML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_HTML_UTF_8_ORDINAL:I = 0xb

.field private static final TEXT_HTML__8859_1:Ljava/lang/String; = "text/html; charset=ISO-8859-1"

.field public static final TEXT_HTML__8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_HTML__UTF_8:Ljava/lang/String; = "text/html; charset=UTF-8"

.field public static final TEXT_HTML__UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final TEXT_JSON:Ljava/lang/String; = "text/json"

.field public static final TEXT_JSON_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_JSON_ORDINAL:I = 0x7

.field public static final TEXT_JSON_UTF_8:Ljava/lang/String; = "text/json;charset=UTF-8"

.field public static final TEXT_JSON_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_JSON_UTF_8_ORDINAL:I = 0xe

.field private static final TEXT_JSON__UTF_8:Ljava/lang/String; = "text/json; charset=UTF-8"

.field public static final TEXT_JSON__UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field public static final TEXT_PLAIN_8859_1:Ljava/lang/String; = "text/plain;charset=ISO-8859-1"

.field public static final TEXT_PLAIN_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_PLAIN_8859_1_ORDINAL:I = 0x9

.field public static final TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_PLAIN_ORDINAL:I = 0x5

.field public static final TEXT_PLAIN_UTF_8:Ljava/lang/String; = "text/plain;charset=UTF-8"

.field public static final TEXT_PLAIN_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_PLAIN_UTF_8_ORDINAL:I = 0xc

.field private static final TEXT_PLAIN__8859_1:Ljava/lang/String; = "text/plain; charset=ISO-8859-1"

.field public static final TEXT_PLAIN__8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_PLAIN__UTF_8:Ljava/lang/String; = "text/plain; charset=UTF-8"

.field public static final TEXT_PLAIN__UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final TEXT_XML:Ljava/lang/String; = "text/xml"

.field public static final TEXT_XML_8859_1:Ljava/lang/String; = "text/xml;charset=ISO-8859-1"

.field public static final TEXT_XML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_XML_8859_1_ORDINAL:I = 0xa

.field public static final TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_XML_ORDINAL:I = 0x6

.field public static final TEXT_XML_UTF_8:Ljava/lang/String; = "text/xml;charset=UTF-8"

.field public static final TEXT_XML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_XML_UTF_8_ORDINAL:I = 0xd

.field private static final TEXT_XML__8859_1:Ljava/lang/String; = "text/xml; charset=ISO-8859-1"

.field public static final TEXT_XML__8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_XML__UTF_8:Ljava/lang/String; = "text/xml; charset=UTF-8"

.field public static final TEXT_XML__UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final __dftMimeMap:Ljava/util/Map;

.field private static final __encodings:Ljava/util/Map;

.field private static __index:I = 0xf


# instance fields
.field private _mimeMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 42
    const-class v0, Lorg/eclipse/jetty/http/MimeTypes;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 93
    new-instance v0, Lorg/eclipse/jetty/io/BufferCache;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/BufferCache;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    .line 96
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "application/x-www-form-urlencoded"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->FORM_ENCODED_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 97
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "message/http"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->MESSAGE_HTTP_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 98
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "multipart/byteranges"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->MULTIPART_BYTERANGES_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 100
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/html"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 101
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/plain"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 102
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/xml"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 103
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/json"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 105
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/html;charset=ISO-8859-1"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 106
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/plain;charset=ISO-8859-1"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 107
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/xml;charset=ISO-8859-1"

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v4}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 109
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/html;charset=UTF-8"

    const/16 v5, 0xb

    invoke-virtual {v0, v1, v5}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 110
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/plain;charset=UTF-8"

    const/16 v6, 0xc

    invoke-virtual {v0, v1, v6}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 111
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/xml;charset=UTF-8"

    const/16 v7, 0xd

    invoke-virtual {v0, v1, v7}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 112
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/json;charset=UTF-8"

    const/16 v8, 0xe

    invoke-virtual {v0, v1, v8}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 114
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/html; charset=ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML__8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 115
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/plain; charset=ISO-8859-1"

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN__8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 116
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/xml; charset=ISO-8859-1"

    invoke-virtual {v0, v1, v4}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML__8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 118
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/html; charset=UTF-8"

    invoke-virtual {v0, v1, v5}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML__UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 119
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/plain; charset=UTF-8"

    invoke-virtual {v0, v1, v6}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN__UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 120
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/xml; charset=UTF-8"

    invoke-virtual {v0, v1, v7}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML__UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 121
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/json; charset=UTF-8"

    invoke-virtual {v0, v1, v8}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON__UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->__dftMimeMap:Ljava/util/Map;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->__encodings:Ljava/util/Map;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "org/eclipse/jetty/http/mime"

    .line 132
    invoke-static {v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v2

    .line 134
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 137
    invoke-virtual {v1, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 138
    sget-object v5, Lorg/eclipse/jetty/http/MimeTypes;->__dftMimeMap:Ljava/util/Map;

    invoke-static {v3}, Lorg/eclipse/jetty/util/StringUtil;->asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Lorg/eclipse/jetty/http/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 143
    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v1}, Ljava/util/MissingResourceException;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    :cond_0
    :try_start_1
    const-string v1, "org/eclipse/jetty/http/encoding"

    .line 149
    invoke-static {v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v2

    .line 151
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/eclipse/jetty/http/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    .line 154
    sget-object v4, Lorg/eclipse/jetty/http/MimeTypes;->__encodings:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 159
    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v1}, Ljava/util/MissingResourceException;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 164
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "ISO-8859-1"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 165
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "ISO_8859_1"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 166
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "iso-8859-1"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 167
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "ISO-8859-1"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 168
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "ISO_8859_1"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 169
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "iso-8859-1"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 170
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "ISO-8859-1"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 171
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "ISO_8859_1"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 172
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "iso-8859-1"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 174
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "UTF-8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 175
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "UTF8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 176
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "utf8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 177
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "utf-8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 178
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "UTF-8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 179
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "UTF8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 180
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "utf8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 181
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "utf-8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 182
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "UTF-8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 183
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "UTF8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 184
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "utf8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 185
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "utf-8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 186
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "UTF-8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 187
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "UTF8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 188
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "utf8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 189
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "utf-8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCharsetFromContentType(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;
    .locals 12

    .line 295
    instance-of v0, p0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_0

    .line 297
    move-object v0, p0

    check-cast v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "UTF-8"

    return-object p0

    :pswitch_1
    const-string p0, "ISO-8859-1"

    return-object p0

    .line 312
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v0

    .line 313
    invoke-interface {p0}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0xa

    if-ge v0, v1, :cond_b

    .line 319
    invoke-interface {p0, v0}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v7

    const/16 v8, 0x22

    const/4 v9, 0x1

    if-eqz v3, :cond_1

    if-eq v4, v6, :cond_1

    if-ne v8, v7, :cond_a

    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_1
    const/16 v10, 0x3b

    const/16 v11, 0x20

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_4

    :pswitch_2
    if-nez v3, :cond_2

    if-eq v10, v7, :cond_3

    if-eq v11, v7, :cond_3

    :cond_2
    if-eqz v3, :cond_a

    if-ne v8, v7, :cond_a

    .line 367
    :cond_3
    sget-object v1, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    sub-int/2addr v0, v5

    invoke-interface {p0, v5, v0}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-interface {p0, v0}, Lorg/eclipse/jetty/io/Buffer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    if-ne v11, v7, :cond_4

    goto :goto_4

    :cond_4
    if-ne v8, v7, :cond_5

    add-int/lit8 v3, v0, 0x1

    move v5, v3

    const/4 v3, 0x1

    :goto_2
    const/16 v4, 0xa

    goto :goto_4

    :cond_5
    move v5, v0

    goto :goto_2

    :pswitch_4
    const/16 v6, 0x3d

    if-ne v6, v7, :cond_6

    const/16 v4, 0x9

    goto :goto_4

    :cond_6
    if-eq v11, v7, :cond_a

    goto :goto_3

    :pswitch_5
    const/16 v4, 0x74

    if-ne v4, v7, :cond_7

    const/16 v4, 0x8

    goto :goto_4

    :pswitch_6
    const/16 v4, 0x65

    if-ne v4, v7, :cond_7

    const/4 v4, 0x7

    goto :goto_4

    :pswitch_7
    const/16 v4, 0x73

    if-ne v4, v7, :cond_7

    const/4 v4, 0x6

    goto :goto_4

    :pswitch_8
    const/16 v4, 0x72

    if-ne v4, v7, :cond_7

    const/4 v4, 0x5

    goto :goto_4

    :pswitch_9
    const/16 v4, 0x61

    if-ne v4, v7, :cond_7

    const/4 v4, 0x4

    goto :goto_4

    :pswitch_a
    const/16 v4, 0x68

    if-ne v4, v7, :cond_7

    const/4 v4, 0x3

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v4, 0x0

    goto :goto_4

    :pswitch_b
    const/16 v6, 0x63

    if-ne v6, v7, :cond_8

    const/4 v4, 0x2

    goto :goto_4

    :cond_8
    if-eq v11, v7, :cond_a

    goto :goto_3

    :pswitch_c
    if-ne v8, v7, :cond_9

    const/4 v3, 0x1

    goto :goto_4

    :cond_9
    if-ne v10, v7, :cond_a

    const/4 v4, 0x1

    :cond_a
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_b
    if-ne v4, v6, :cond_c

    .line 372
    sget-object v1, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    sub-int/2addr v0, v5

    invoke-interface {p0, v5, v0}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-interface {p0, v0}, Lorg/eclipse/jetty/io/Buffer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 374
    :cond_c
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->__encodings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static declared-synchronized normalizeMimeType(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;
    .locals 4

    const-class v0, Lorg/eclipse/jetty/http/MimeTypes;

    monitor-enter v0

    .line 286
    :try_start_0
    sget-object v1, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v1, p0}, Lorg/eclipse/jetty/io/BufferCache;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 288
    sget-object v1, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    sget v2, Lorg/eclipse/jetty/http/MimeTypes;->__index:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/eclipse/jetty/http/MimeTypes;->__index:I

    invoke-virtual {v1, p0, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 285
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addMimeMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lorg/eclipse/jetty/http/MimeTypes;->_mimeMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/MimeTypes;->_mimeMap:Ljava/util/Map;

    .line 280
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/MimeTypes;->_mimeMap:Ljava/util/Map;

    invoke-static {p1}, Lorg/eclipse/jetty/util/StringUtil;->asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lorg/eclipse/jetty/http/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, -0x1

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    const-string v2, "."

    add-int/lit8 v1, v1, 0x1

    .line 246
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_3

    .line 248
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 251
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/StringUtil;->asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    iget-object v3, p0, Lorg/eclipse/jetty/http/MimeTypes;->_mimeMap:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 253
    iget-object v0, p0, Lorg/eclipse/jetty/http/MimeTypes;->_mimeMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    :cond_2
    if-nez v0, :cond_0

    .line 255
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->__dftMimeMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 261
    iget-object p1, p0, Lorg/eclipse/jetty/http/MimeTypes;->_mimeMap:Ljava/util/Map;

    if-eqz p1, :cond_4

    .line 262
    iget-object p1, p0, Lorg/eclipse/jetty/http/MimeTypes;->_mimeMap:Ljava/util/Map;

    const-string v0, "*"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    :cond_4
    if-nez v0, :cond_5

    .line 264
    sget-object p1, Lorg/eclipse/jetty/http/MimeTypes;->__dftMimeMap:Ljava/util/Map;

    const-string v0, "*"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    :cond_5
    return-object v0
.end method

.method public declared-synchronized getMimeMap()Ljava/util/Map;
    .locals 1

    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/MimeTypes;->_mimeMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMimeMap(Ljava/util/Map;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 217
    iput-object p1, p0, Lorg/eclipse/jetty/http/MimeTypes;->_mimeMap:Ljava/util/Map;

    return-void

    .line 221
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 222
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 223
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 226
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/http/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 228
    :cond_1
    iput-object v0, p0, Lorg/eclipse/jetty/http/MimeTypes;->_mimeMap:Ljava/util/Map;

    return-void
.end method
