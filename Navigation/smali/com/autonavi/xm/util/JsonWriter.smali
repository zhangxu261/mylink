.class public final Lcom/autonavi/xm/util/JsonWriter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private indent:Ljava/lang/String;

.field private lenient:Z

.field private final out:Ljava/io/Writer;

.field private separator:Ljava/lang/String;

.field private final stack:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/util/JsonWriter;->stack:Ljava/util/List;

    iget-object v0, p0, Lcom/autonavi/xm/util/JsonWriter;->stack:Ljava/util/List;

    sget-object v1, Lcom/autonavi/xm/util/JsonScope;->EMPTY_DOCUMENT:Lcom/autonavi/xm/util/JsonScope;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, ":"

    iput-object v0, p0, Lcom/autonavi/xm/util/JsonWriter;->separator:Ljava/lang/String;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    return-void
.end method

.method private beforeName()V
    .locals 3

    invoke-direct {p0}, Lcom/autonavi/xm/util/JsonWriter;->peek()Lcom/autonavi/xm/util/JsonScope;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/util/JsonScope;->NONEMPTY_OBJECT:Lcom/autonavi/xm/util/JsonScope;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xm/util/JsonWriter;->newline()V

    sget-object v0, Lcom/autonavi/xm/util/JsonScope;->DANGLING_NAME:Lcom/autonavi/xm/util/JsonScope;

    invoke-direct {p0, v0}, Lcom/autonavi/xm/util/JsonWriter;->replaceTop(Lcom/autonavi/xm/util/JsonScope;)V

    return-void

    :cond_1
    sget-object v1, Lcom/autonavi/xm/util/JsonScope;->EMPTY_OBJECT:Lcom/autonavi/xm/util/JsonScope;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nesting problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xm/util/JsonWriter;->stack:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private beforeValue(Z)V
    .locals 3

    sget-object v0, Lcom/autonavi/xm/util/JsonWriter$1;->$SwitchMap$com$autonavi$xm$util$JsonScope:[I

    invoke-direct {p0}, Lcom/autonavi/xm/util/JsonWriter;->peek()Lcom/autonavi/xm/util/JsonScope;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xm/util/JsonScope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nesting problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xm/util/JsonWriter;->stack:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-boolean v0, p0, Lcom/autonavi/xm/util/JsonWriter;->lenient:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must start with an array or an object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/autonavi/xm/util/JsonScope;->NONEMPTY_DOCUMENT:Lcom/autonavi/xm/util/JsonScope;

    invoke-direct {p0, v0}, Lcom/autonavi/xm/util/JsonWriter;->replaceTop(Lcom/autonavi/xm/util/JsonScope;)V

    :goto_0
    return-void

    :pswitch_1
    sget-object v0, Lcom/autonavi/xm/util/JsonScope;->NONEMPTY_ARRAY:Lcom/autonavi/xm/util/JsonScope;

    invoke-direct {p0, v0}, Lcom/autonavi/xm/util/JsonWriter;->replaceTop(Lcom/autonavi/xm/util/JsonScope;)V

    invoke-direct {p0}, Lcom/autonavi/xm/util/JsonWriter;->newline()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    invoke-direct {p0}, Lcom/autonavi/xm/util/JsonWriter;->newline()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lcom/autonavi/xm/util/JsonWriter;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    sget-object v0, Lcom/autonavi/xm/util/JsonScope;->NONEMPTY_OBJECT:Lcom/autonavi/xm/util/JsonScope;

    invoke-direct {p0, v0}, Lcom/autonavi/xm/util/JsonWriter;->replaceTop(Lcom/autonavi/xm/util/JsonScope;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private close(Lcom/autonavi/xm/util/JsonScope;Lcom/autonavi/xm/util/JsonScope;Ljava/lang/String;)Lcom/autonavi/xm/util/JsonWriter;
    .locals 3

    invoke-direct {p0}, Lcom/autonavi/xm/util/JsonWriter;->peek()Lcom/autonavi/xm/util/JsonScope;

    move-result-object v0

    if-eq v0, p2, :cond_0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nesting problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xm/util/JsonWriter;->stack:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xm/util/JsonWriter;->stack:Ljava/util/List;

    iget-object v2, p0, Lcom/autonavi/xm/util/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-ne v0, p2, :cond_1

    invoke-direct {p0}, Lcom/autonavi/xm/util/JsonWriter;->newline()V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method private newline()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/util/JsonWriter;->indent:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/autonavi/xm/util/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Lcom/autonavi/xm/util/JsonWriter;->indent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private open(Lcom/autonavi/xm/util/JsonScope;Ljava/lang/String;)Lcom/autonavi/xm/util/JsonWriter;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/autonavi/xm/util/JsonWriter;->beforeValue(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/util/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method private peek()Lcom/autonavi/xm/util/JsonScope;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/util/JsonWriter;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/autonavi/xm/util/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/util/JsonScope;

    return-object v0
.end method

.method private replaceTop(Lcom/autonavi/xm/util/JsonScope;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/util/JsonWriter;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/autonavi/xm/util/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private string(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_0

    iget-object v4, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v5, "\\u%04x"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    iget-object v4, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    iget-object v4, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :sswitch_1
    iget-object v3, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v4, "\\t"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    iget-object v3, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v4, "\\b"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    iget-object v3, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v4, "\\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_4
    iget-object v3, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v4, "\\r"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_5
    iget-object v3, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v4, "\\f"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_6
    iget-object v4, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v5, "\\u%04x"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_3
        0xc -> :sswitch_5
        0xd -> :sswitch_4
        0x22 -> :sswitch_0
        0x5c -> :sswitch_0
        0x2028 -> :sswitch_6
        0x2029 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public beginArray()Lcom/autonavi/xm/util/JsonWriter;
    .locals 2

    sget-object v0, Lcom/autonavi/xm/util/JsonScope;->EMPTY_ARRAY:Lcom/autonavi/xm/util/JsonScope;

    const-string v1, "["

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xm/util/JsonWriter;->open(Lcom/autonavi/xm/util/JsonScope;Ljava/lang/String;)Lcom/autonavi/xm/util/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public beginObject()Lcom/autonavi/xm/util/JsonWriter;
    .locals 2

    sget-object v0, Lcom/autonavi/xm/util/JsonScope;->EMPTY_OBJECT:Lcom/autonavi/xm/util/JsonScope;

    const-string v1, "{"

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xm/util/JsonWriter;->open(Lcom/autonavi/xm/util/JsonScope;Ljava/lang/String;)Lcom/autonavi/xm/util/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    invoke-direct {p0}, Lcom/autonavi/xm/util/JsonWriter;->peek()Lcom/autonavi/xm/util/JsonScope;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/util/JsonScope;->NONEMPTY_DOCUMENT:Lcom/autonavi/xm/util/JsonScope;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public endArray()Lcom/autonavi/xm/util/JsonWriter;
    .locals 3

    sget-object v0, Lcom/autonavi/xm/util/JsonScope;->EMPTY_ARRAY:Lcom/autonavi/xm/util/JsonScope;

    sget-object v1, Lcom/autonavi/xm/util/JsonScope;->NONEMPTY_ARRAY:Lcom/autonavi/xm/util/JsonScope;

    const-string v2, "]"

    invoke-direct {p0, v0, v1, v2}, Lcom/autonavi/xm/util/JsonWriter;->close(Lcom/autonavi/xm/util/JsonScope;Lcom/autonavi/xm/util/JsonScope;Ljava/lang/String;)Lcom/autonavi/xm/util/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lcom/autonavi/xm/util/JsonWriter;
    .locals 3

    sget-object v0, Lcom/autonavi/xm/util/JsonScope;->EMPTY_OBJECT:Lcom/autonavi/xm/util/JsonScope;

    sget-object v1, Lcom/autonavi/xm/util/JsonScope;->NONEMPTY_OBJECT:Lcom/autonavi/xm/util/JsonScope;

    const-string v2, "}"

    invoke-direct {p0, v0, v1, v2}, Lcom/autonavi/xm/util/JsonWriter;->close(Lcom/autonavi/xm/util/JsonScope;Lcom/autonavi/xm/util/JsonScope;Ljava/lang/String;)Lcom/autonavi/xm/util/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public isLenient()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/util/JsonWriter;->lenient:Z

    return v0
.end method

.method public name(Ljava/lang/String;)Lcom/autonavi/xm/util/JsonWriter;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xm/util/JsonWriter;->beforeName()V

    invoke-direct {p0, p1}, Lcom/autonavi/xm/util/JsonWriter;->string(Ljava/lang/String;)V

    return-object p0
.end method

.method public nullValue()Lcom/autonavi/xm/util/JsonWriter;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/util/JsonWriter;->beforeValue(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public setIndent(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xm/util/JsonWriter;->indent:Ljava/lang/String;

    const-string v0, ":"

    iput-object v0, p0, Lcom/autonavi/xm/util/JsonWriter;->separator:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/autonavi/xm/util/JsonWriter;->indent:Ljava/lang/String;

    const-string v0, ": "

    iput-object v0, p0, Lcom/autonavi/xm/util/JsonWriter;->separator:Ljava/lang/String;

    goto :goto_0
.end method

.method public setLenient(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/util/JsonWriter;->lenient:Z

    return-void
.end method

.method public value(D)Lcom/autonavi/xm/util/JsonWriter;
    .locals 3

    iget-boolean v0, p0, Lcom/autonavi/xm/util/JsonWriter;->lenient:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric values must be finite, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/util/JsonWriter;->beforeValue(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0
.end method

.method public value(J)Lcom/autonavi/xm/util/JsonWriter;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/util/JsonWriter;->beforeValue(Z)V

    iget-object v0, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public value(Ljava/lang/Number;)Lcom/autonavi/xm/util/JsonWriter;
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/util/JsonWriter;->nullValue()Lcom/autonavi/xm/util/JsonWriter;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/autonavi/xm/util/JsonWriter;->lenient:Z

    if-nez v1, :cond_2

    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric values must be finite, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/autonavi/xm/util/JsonWriter;->beforeValue(Z)V

    iget-object v1, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_0
.end method

.method public value(Ljava/lang/String;)Lcom/autonavi/xm/util/JsonWriter;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xm/util/JsonWriter;->nullValue()Lcom/autonavi/xm/util/JsonWriter;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/util/JsonWriter;->beforeValue(Z)V

    invoke-direct {p0, p1}, Lcom/autonavi/xm/util/JsonWriter;->string(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public value(Z)Lcom/autonavi/xm/util/JsonWriter;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/xm/util/JsonWriter;->beforeValue(Z)V

    iget-object v1, p0, Lcom/autonavi/xm/util/JsonWriter;->out:Ljava/io/Writer;

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
