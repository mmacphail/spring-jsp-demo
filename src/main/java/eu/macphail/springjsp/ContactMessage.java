package eu.macphail.springjsp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ContactMessage {

    @NotNull
    String name;
    String email;

    @NotNull
    @Size(min = 2)
    String message;
}
