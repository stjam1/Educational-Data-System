CREATE TABLE IF NOT EXISTS public."Address_zip"
(
    "Zipcode" integer NOT NULL,
    "City" text NOT NULL,
    "State" text NOT NULL,
    CONSTRAINT "Address_zip_pkey" PRIMARY KEY ("Zipcode")
);

CREATE TABLE IF NOT EXISTS public."University"
(
    "University_id" integer NOT NULL,
    "Name" text  NOT NULL,
    "Control" text NOT NULL,
    "Website" text NOT NULL,
    "Zipcode" integer NOT NULL,
    CONSTRAINT "University_pkey" PRIMARY KEY ("University_id"),
    CONSTRAINT "University_Zipcode_fkey" FOREIGN KEY ("Zipcode")
        REFERENCES public."Address_zip" ("Zipcode")

);

CREATE TABLE IF NOT EXISTS public."Ethnicity"
(
    "Ethnic_id" integer NOT NULL,
    "Ethnicity" text NOT NULL,
    CONSTRAINT "Ethnicity_pkey" PRIMARY KEY ("Ethnic_id")
);

CREATE TABLE IF NOT EXISTS public."FacultyDetails"
(
    "Faculty_id" integer NOT NULL,
    "University_id" integer NOT NULL,
    "Name" text NOT NULL,
    "Gender" text NOT NULL,
    "Ethnic_id" integer NOT NULL,
    CONSTRAINT "FacultyDetails_pkey" PRIMARY KEY ("Faculty_id", "University_id"),
    CONSTRAINT university_fk FOREIGN KEY ("University_id")
        REFERENCES public."University" ("University_id") 
        
);

CREATE TABLE IF NOT EXISTS public."StudentDetails"
(
    "Student_id" integer NOT NULL,
    "Student_Name" text NOT NULL,
    "Gender" text NOT NULL,
    "Sat_Score" integer NOT NULL,
    "Aid_Value" integer NOT NULL,
    "Degree_Completion_time" integer NOT NULL,
    "Ethnic_id" integer NOT NULL,
    "University_id" integer NOT NULL,
    CONSTRAINT "StudentDetails_pkey" PRIMARY KEY ("Student_id"),
    CONSTRAINT "StudentDetails_Ethnic_id_fkey" FOREIGN KEY ("Ethnic_id")
        REFERENCES public."Ethnicity" ("Ethnic_id"), 
    CONSTRAINT "StudentDetails_University_id_fkey" FOREIGN KEY ("University_id")
        REFERENCES public."University" ("University_id") 
);

CREATE INDEX IF NOT EXISTS sat
    ON public."StudentDetails" USING btree
    ("Sat_Score" ASC NULLS LAST);


